no_source()

rm(list = ls())

library(tidyverse)

setwd(masstools::get_project_wd())

source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/ema_data/ema_data")

dir.create("3_data_analysis/3_stress_and_well_being/chang_individually_ema",
           recursive = TRUE)
setwd("3_data_analysis/3_stress_and_well_being/chang_individually_ema")

expression_data <-
  massdataset::extract_expression_data(ema_data)

sample_info <-
  massdataset::extract_sample_info(ema_data)

variable_info <-
  massdataset::extract_variable_info(ema_data)

temp_data <-
  t(expression_data) %>%
  as.data.frame() %>% 
  dplyr::select(-ema_complete)

colnames(temp_data) <-
  variable_info$real_name[match(colnames(temp_data), variable_info$variable_id)]

library(plyr)

unique(sample_info$subject_id) %>%
  as.character() %>% 
  purrr::map(function(x) {
    cat(x, " ")
    dir.create(as.character(x))
    temp <-
      temp_data %>%
      tibble::rownames_to_column(var = "sample_id") %>%
      dplyr::left_join(sample_info[, c("sample_id", "subject_id", "check_point")],
                       by = "sample_id") %>%
      dplyr::filter(subject_id == x) %>%
      dplyr::select(-c("sample_id", "subject_id")) %>%
      dplyr::select(check_point, everything())

    if (nrow(temp) < 5) {
      return(NULL)
    }

    cor_data <-
      cor(temp[, -1], method = "spearman")

    cor_data[which(is.na(cor_data), arr.ind = TRUE)] <- 0

    library(ComplexHeatmap)

    library(circlize)
    
    col_fun <-
    circlize::colorRamp2(breaks = c(-1, 0, 1), colors = c("blue", "white", "red"))
    
    plot <-
      Heatmap(
        cor_data,
        col = col_fun,
        cluster_columns = TRUE,
        cluster_rows = TRUE,
        border = TRUE,
        rect_gp = gpar(col = "white"),
        # row_km = 2,
        # column_km = 2,
        name = "cor"
      )

    # module_info <-
    #   row_order(plot) %>%
    #   lapply(function(index) {
    #     rownames(cor_data)[index]
    #   })
    # 
    # save(module_info, file = file.path(x, "module_info"))

    library(ggplotify)
    plot <-
      as.ggplot(plot)
    # plot

    ggsave(
      plot,
      filename = file.path(x, "cor_heatmap.pdf"),
      width = 7.91,
      height = 6.88
    )

    temp <-
      temp %>%
      tidyr::pivot_longer(
        cols = -"check_point",
        values_to = "score",
        names_to = "survey"
      )

    plot <-
      temp %>%
      # dplyr::filter(survey %in% module_info[[1]]) %>%
      ggplot(aes(check_point, score)) +
      geom_point() +
      geom_line(aes(group = survey)) +
      theme_bw() +
      facet_wrap(facets = vars(survey),
                 nrow = 4,
                 scales = "free")

    ggsave(
      plot,
      filename = file.path(x, "score_individual.pdf"),
      width = 12,
      height = 7
    )
  })
