no_source()
rm(list = ls())
library(tidyverse)

setwd(masstools::get_project_wd())
source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/survey_data_6_points/survey_data")

dir.create("3_data_analysis/2_data_overview/survey_data_6_timepoints",
           recursive = TRUE)
setwd("3_data_analysis/2_data_overview/survey_data_6_timepoints")

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

###output all survey scores
survey_mean_sd <- 
paste0("_", 1:5) %>% 
  purrr::map(function(idx){
    mean_value <-
    apply(temp_data[stringr::str_detect(rownames(temp_data), idx),], 2, function(x){
      mean(x, na.rm = TRUE)   
  })

    sd_value <-
      apply(temp_data[stringr::str_detect(rownames(temp_data), idx),], 2, function(x){
        sd(x, na.rm = TRUE)   
      })
    
    data.frame(mean_value, sd_value) %>% 
      dplyr::rename_all(funs(paste0(., idx)))
    
}) %>% 
  do.call(cbind, .) %>% 
  as.data.frame() %>% 
  tibble::rownames_to_column(var = "variable_id")

write.csv(survey_mean_sd, "survey_mean_sd.csv", row.names = FALSE)



temp <-
  temp_data %>%
  dplyr::select(pss_total)

mean(temp[stringr::str_detect(rownames(temp), "_1"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_1"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_2"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_2"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_3"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_3"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_4"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_4"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_5"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_5"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_6"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_6"), ], na.rm = TRUE)

t.test(temp[stringr::str_detect(rownames(temp), "_1"), ],
       temp[stringr::str_detect(rownames(temp), "_6"), ])

t.test(temp[stringr::str_detect(rownames(temp), "_3"), ],
       temp[stringr::str_detect(rownames(temp), "_6"), ])



temp <-
  temp_data %>%
  dplyr::select(burnout_total)

mean(temp[stringr::str_detect(rownames(temp), "_1"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_1"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_2"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_2"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_3"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_3"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_4"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_4"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_5"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_5"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_6"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_6"), ], na.rm = TRUE)

t.test(temp[stringr::str_detect(rownames(temp), "_1"), ],
       temp[stringr::str_detect(rownames(temp), "_6"), ])

t.test(temp[stringr::str_detect(rownames(temp), "_3"), ],
       temp[stringr::str_detect(rownames(temp), "_6"), ])




temp <-
  temp_data %>%
  dplyr::select(resilience_total)

mean(temp[stringr::str_detect(rownames(temp), "_1"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_1"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_2"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_2"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_3"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_3"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_4"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_4"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_5"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_5"), ], na.rm = TRUE)

mean(temp[stringr::str_detect(rownames(temp), "_6"), ], na.rm = TRUE)
sd(temp[stringr::str_detect(rownames(temp), "_6"), ], na.rm = TRUE)


t.test(temp[stringr::str_detect(rownames(temp), "_1"), ],
       temp[stringr::str_detect(rownames(temp), "_6"), ])

t.test(temp[stringr::str_detect(rownames(temp), "_3"), ],
       temp[stringr::str_detect(rownames(temp), "_6"), ])


library(plyr)

temp_data <-
  temp_data %>%
  tibble::rownames_to_column(var = "sample_id") %>%
  dplyr::left_join(sample_info[, c("sample_id", "check_point")],
                   by = "sample_id") %>%
  plyr::dlply(.variables = .(check_point)) %>%
  purrr::map(function(x) {
    x %>%
      dplyr::select(-c(sample_id, check_point)) %>%
      colMeans(na.rm = TRUE)
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  t()

temp_data <-
  temp_data %>%
  apply(1, function(x) {
    (x - mean(x)) / sd(x)
  }) %>%
  t() %>%
  as.data.frame()

library(ComplexHeatmap)

rownames(temp_data) <-
  variable_info$real_name[match(rownames(temp_data), variable_info$variable_id)]


plot <-
  Heatmap(
    temp_data,
    cluster_columns = FALSE,
    cluster_rows = TRUE,
    border = TRUE,
    rect_gp = gpar(col = "white")
  )
library(ggplotify)
plot <-
  as.ggplot(plot)
plot

ggsave(plot,
       filename = "heatmap.pdf",
       width = 5,
       height = 6)
ggsave(plot,
       filename = "heatmap.png",
       width = 5,
       height = 6)

temp_data

write.csv(temp_data, "data_for_heatmap.csv")
