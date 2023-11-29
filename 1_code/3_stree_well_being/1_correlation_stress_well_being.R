no_source()

rm(list = ls())

library(tidyverse)

setwd(masstools::get_project_wd())

source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/survey_data/survey_data")

dir.create("3_data_analysis/3_stress_and_well_being/correlation",
           recursive = TRUE)
setwd("3_data_analysis/3_stress_and_well_being/correlation")

expression_data <-
  massdataset::extract_expression_data(survey_data)

sample_info <-
  massdataset::extract_sample_info(survey_data)

variable_info <-
  massdataset::extract_variable_info(survey_data)

temp_data <-
  t(expression_data) %>%
  as.data.frame() %>%
  dplyr::select(-matches("cdrisc_[0-9]{1,2}")) %>%
  dplyr::select(-matches("gfma_[0-9]{1,2}")) %>%
  dplyr::select(-matches("gratitude_[0-9]{1,2}")) %>%
  dplyr::select(-matches("gse_[0-9]{1,2}")) %>%
  dplyr::select(-matches("olbi_[0-9]{1,2}")) %>%
  dplyr::select(-matches("perma_[0-9]{1,2}")) %>%
  dplyr::select(-matches("pfi_[0-9]{1,2}")) %>%
  dplyr::select(-matches("pss_[0-9]{1,2}")) %>%
  dplyr::select(-matches("who_[0-9]{1,2}"))

colnames(temp_data) <-
  variable_info$real_name[match(colnames(temp_data), variable_info$variable_id)]

library(plyr)

###only keep the baseline

sample_info <-
  sample_info %>%
  dplyr::filter(check_point == "1")

temp_data <-
  temp_data[sample_info$sample_id, ]

cor_data <-
  cor(temp_data, method = "spearman", use = "na.or.complete")

library(ComplexHeatmap)

plot <-
  Heatmap(
    cor_data,
    cluster_columns = TRUE,
    cluster_rows = TRUE,
    border = TRUE,
    rect_gp = gpar(col = "white"),
    row_km = 2,
    column_km = 2
  )

plot

module_info <-
  row_order(plot) %>%
  lapply(function(index) {
    rownames(cor_data)[index]
  })

save(module_info, file = "module_info")

library(ggplotify)
plot <-
  as.ggplot(plot)
plot

ggsave(plot,
       filename = "baseline_cor.pdf",
       width = 8,
       height = 6.9)
ggsave(plot,
       filename = "baseline_cor.png",
       width = 8,
       height = 6.9)

write.csv(cor_data, "cor_data.csv")
