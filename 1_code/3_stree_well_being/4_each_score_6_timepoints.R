no_source()

rm(list = ls())

library(tidyverse)

setwd(masstools::get_project_wd())

source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/survey_data_6_points/survey_data")

dir.create("3_data_analysis/3_stress_and_well_being/each_score_6_timepoints",
           recursive = TRUE)
setwd("3_data_analysis/3_stress_and_well_being/each_score_6_timepoints")

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

colnames(temp_data) %>%
  purrr::map(function(x) {
    dir.create(x)
    temp <-
      temp_data %>%
      select(one_of(x))
    colnames(temp) <- "value"
    temp <-
      temp %>%
      tibble::rownames_to_column(var = "sample_id") %>%
      dplyr::left_join(sample_info[, c("sample_id", "subject_id", "check_point")]) %>%
      dplyr::mutate(subject_id = as.character(subject_id)) %>%
      dplyr::filter(!is.na(value))
    
    ##only remain the subjects with at least three time points
    remain_subject_id <-
      temp %>%
      dplyr::count(subject_id) %>%
      dplyr::filter(n >= 5)
    
    temp <-
      temp %>%
      dplyr::filter(subject_id %in% remain_subject_id$subject_id)
    
    scatter_plot <-
      temp %>%
      ggplot(aes(check_point, value)) +
      geom_point(aes(color = subject_id), show.legend = FALSE) +
      geom_line(aes(group = subject_id, 
                    color = subject_id), show.legend = FALSE) +
      theme_bw()
    
    smooth_plot <-
      temp %>%
      ggplot(aes(check_point, value)) +
      # geom_point(aes(color = subject_id), show.legend = FALSE) +
      # geom_line(aes(color = subject_id), show.legend = FALSE) +
      geom_smooth(
        aes(group = subject_id,
            color = subject_id),
        method = "loess",
        se = FALSE,
        show.legend = FALSE
      ) +
      theme_bw()
    
    ##heatmap
    library(ComplexHeatmap)
    temp2 <-
      temp %>%
      dplyr::select(subject_id, check_point, value) %>%
      tidyr::pivot_wider(names_from = "check_point", values_from = "value") %>%
      tibble::column_to_rownames(var = "subject_id")
    
    ###remove the subjects that have more than 3 NAs
    temp2 <-
      temp2 %>%
      dplyr::filter(rowSums(is.na(.)) <= 2)

    temp2[is.na(temp2)] <- min(temp2, na.rm = TRUE)
    
    heatmap_plot <-
      Heatmap(
        temp2,
        cluster_columns = FALSE,
        cluster_rows = TRUE,
        border = TRUE,
        show_row_names = FALSE,
        rect_gp = gpar(col = "white"),
        row_km = 4,
        # column_km = 2,
        name = x
      )
    
    heatmap_plot2 <-
      ggplotify::as.ggplot(heatmap_plot)
    
    heatmap_plot <- draw(heatmap_plot)
    
    module_info <-
      1:length(row_order(heatmap_plot)) %>%
      lapply(function(i) {
        idx <- row_order(heatmap_plot)[[i]]
        data.frame(module = i, subject_id = rownames(temp2)[idx])
      }) %>%
      do.call(rbind, .) %>%
      as.data.frame()
    
    scatter_plot_individual <-
      temp %>%
      dplyr::left_join(module_info, by = "subject_id") %>%
      ggplot(aes(check_point, value)) +
      geom_point(aes(color = subject_id), show.legend = FALSE) +
      geom_line(aes(group = subject_id, 
                    color = subject_id), show.legend = FALSE) +
      geom_smooth(aes(check_point, value, group = module),
                  se = FALSE, color = 'black') +
      theme_bw() +
      facet_wrap(vars(module), ncol = 4)
    
    smooth_plot_individual <-
      temp %>%
      dplyr::left_join(module_info, by = "subject_id") %>%
      ggplot(aes(check_point, value)) +
      geom_smooth(
        aes(group = subject_id, 
            color = subject_id),
        method = "loess",
        se = FALSE,
        show.legend = FALSE
      ) +
      theme_bw() +
      facet_wrap(vars(module), ncol = 4)
    
    ggsave(
      scatter_plot_individual,
      filename = file.path(x, "scatter_plot_individual.pdf"),
      width = 10,
      height = 3
    )
    
    ggsave(
      scatter_plot_individual,
      filename = file.path(x, "scatter_plot_individual.png"),
      width = 10,
      height = 3
    )
    
    
    ggsave(
      smooth_plot_individual,
      filename = file.path(x, "smooth_plot_individual.pdf"),
      width = 10,
      height = 3
    )
    
    ggsave(
      smooth_plot_individual,
      filename = file.path(x, "smooth_plot_individual.png"),
      width = 10,
      height = 3
    )
    
    ggsave(
      scatter_plot,
      filename = file.path(x, "scatter_plot.pdf"),
      width = 7,
      height = 7
    )
    
    ggsave(
      scatter_plot,
      filename = file.path(x, "scatter_plot.png"),
      width = 7,
      height = 7
    )
    
    
    ggsave(
      smooth_plot,
      filename = file.path(x, "smooth_plot.pdf"),
      width = 7,
      height = 7
    )
    
    ggsave(
      smooth_plot,
      filename = file.path(x, "smooth_plot.png"),
      width = 7,
      height = 7
    )
    
    ggsave(
      heatmap_plot2,
      filename = file.path(x, "heatmap_plot.pdf"),
      width = 4,
      height = 7
    )
    
    ggsave(
      heatmap_plot2,
      filename = file.path(x, "heatmap_plot.png"),
      width = 4,
      height = 7
    )
  })

