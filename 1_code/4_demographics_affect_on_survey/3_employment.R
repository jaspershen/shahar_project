no_source()

rm(list = ls())

library(tidyverse)

setwd(masstools::get_project_wd())

source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/survey_data/survey_data")
load("3_data_analysis/1_data_preparation/phenotype_info/phenotype_data")

load("3_data_analysis/3_stress_and_well_being/correlation/module_info")

dir.create("3_data_analysis/4_demographics_affect_on_survey/employment",
           recursive = TRUE)
setwd("3_data_analysis/4_demographics_affect_on_survey/employment")

module_info <-
  seq_along(module_info) %>%
  purrr::map(function(idx) {
    data.frame(survey = module_info[[idx]],
               class = idx)
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

expression_data <-
  massdataset::extract_expression_data(survey_data)

sample_info <-
  massdataset::extract_sample_info(survey_data)

variable_info <-
  massdataset::extract_variable_info(survey_data)

subject_data <-
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

colnames(subject_data) <-
  variable_info$real_name[match(colnames(subject_data), variable_info$variable_id)]

library(plyr)

###add phenotype data
sample_info <-
  sample_info %>%
  dplyr::left_join(phenotype_data, by = "subject_id")

sample_info <-
  sample_info %>%
  dplyr::mutate(
    demographics_employment = case_when(
      demographics_employment == "Business Owner Full-Time" ~ "Employed",
      demographics_employment == "Business Owner Part-Time" ~ "Employed",
      demographics_employment == "Employed Full-Time" ~ "Employed",
      demographics_employment == "Employed Part-Time" ~ "Employed",
      demographics_employment == "Retired" ~ "Unemployed",
      demographics_employment == "Seeking opportunities" ~ "Unemployed",
      demographics_employment == "Unemployed" ~ "Unemployed"
    )
  )

rownames(subject_data) == sample_info$sample_id

library(patchwork)

dir.create("box_plot")

# colnames(subject_data) %>%
#   purrr::map(function(x) {
#     cat(x, " ")
#     plot1 <-
#       subject_data[, x, drop = FALSE] %>%
#       tibble::rownames_to_column(var = "sample_id") %>%
#       dplyr::left_join(sample_info[, c("sample_id", "demographics_employment", "check_point")]) %>%
#       dplyr::rename("value" = x) %>%
#       dplyr::filter(!is.na(demographics_employment)) %>%
#       dplyr::filter(check_point == "1") %>%
#       ggstatsplot::ggbetweenstats(
#         demographics_employment,
#         value,
#         p.adjust.method = "fdr",
#         type = "nonparametric",
#         ggtheme = theme_bw()
#       ) +
#       scale_color_manual(values = employment_color)
#
#     plot2 <-
#       subject_data[, x, drop = FALSE] %>%
#       tibble::rownames_to_column(var = "sample_id") %>%
#       dplyr::left_join(sample_info[, c("sample_id", "demographics_employment", "check_point")]) %>%
#       dplyr::rename("value" = x) %>%
#       dplyr::filter(!is.na(demographics_employment)) %>%
#       dplyr::filter(check_point == "2") %>%
#       ggstatsplot::ggbetweenstats(
#         demographics_employment,
#         value,
#         p.adjust.method = "fdr",
#         type = "nonparametric",
#         ggtheme = theme_bw()
#       ) +
#       scale_color_manual(values = employment_color)
#
#     plot3 <-
#       subject_data[, x, drop = FALSE] %>%
#       tibble::rownames_to_column(var = "sample_id") %>%
#       dplyr::left_join(sample_info[, c("sample_id", "demographics_employment", "check_point")]) %>%
#       dplyr::rename("value" = x) %>%
#       dplyr::filter(!is.na(demographics_employment)) %>%
#       dplyr::filter(check_point == "3") %>%
#       ggstatsplot::ggbetweenstats(
#         demographics_employment,
#         value,
#         p.adjust.method = "fdr",
#         type = "nonparametric",
#         ggtheme = theme_bw()
#       ) +
#       scale_color_manual(values = employment_color)
#
#     plot4 <-
#       subject_data[, x, drop = FALSE] %>%
#       tibble::rownames_to_column(var = "sample_id") %>%
#       dplyr::left_join(sample_info[, c("sample_id", "demographics_employment", "check_point")]) %>%
#       dplyr::rename("value" = x) %>%
#       dplyr::filter(!is.na(demographics_employment)) %>%
#       dplyr::filter(check_point == "4") %>%
#       ggstatsplot::ggbetweenstats(
#         demographics_employment,
#         value,
#         p.adjust.method = "fdr",
#         type = "nonparametric",
#         ggtheme = theme_bw()
#       ) +
#       scale_color_manual(values = employment_color)
#
#     plot5 <-
#       subject_data[, x, drop = FALSE] %>%
#       tibble::rownames_to_column(var = "sample_id") %>%
#       dplyr::left_join(sample_info[, c("sample_id", "demographics_employment", "check_point")]) %>%
#       dplyr::rename("value" = x) %>%
#       dplyr::filter(!is.na(demographics_employment)) %>%
#       dplyr::filter(check_point == "5") %>%
#       ggstatsplot::ggbetweenstats(
#         demographics_employment,
#         value,
#         p.adjust.method = "fdr",
#         type = "nonparametric",
#         ggtheme = theme_bw()
#       ) +
#       scale_color_manual(values = employment_color)
#
#     plot <-
#       plot1 + plot2 + plot3 + plot4 + plot5 + patchwork::plot_layout(nrow = 1)
#
#     ggsave(
#       plot,
#       filename = file.path("box_plot", paste0(x, ".pdf")),
#       width = 25,
#       height = 5
#     )
#     ggsave(
#       plot,
#       filename = file.path("box_plot", paste0(x, ".png")),
#       width = 25,
#       height = 5
#     )
#   })

fc_p <-
  colnames(subject_data) %>%
  purrr::map(function(x) {
    cat(x, " ")
    temp <-
      subject_data[, x, drop = FALSE] %>%
      tibble::rownames_to_column(var = "sample_id") %>%
      dplyr::left_join(sample_info[, c("sample_id", "check_point", "demographics_employment")]) %>%
      dplyr::rename("value" = x) %>%
      dplyr::filter(!is.na(demographics_employment))
    
    library(plyr)
    
    temp %>%
      plyr::dlply(.variables = .(check_point)) %>%
      purrr::map(function(y) {
        result <-
          wilcox.test(y$value[y$demographics_employment == "Employed"],
                      y$value[y$demographics_employment == "Unemployed"])
        fc <-
          log(median(y$value[y$demographics_employment == "Unemployed"], na.rm = TRUE) /
                median(y$value[y$demographics_employment == "Employed"], na.rm = TRUE),
              2)
        p_value <- result$p.value
        
        data.frame(
          survey = x,
          fc = fc,
          p_value = p_value,
          check_point = y$check_point[1]
        )
      }) %>%
      do.call(rbind, .) %>%
      as.data.frame()
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

save(fc_p, file = "fc_p")


dir.create("line_plot")

# colnames(subject_data) %>%
#   purrr::map(function(x) {
#     cat(x, " ")
#     plot <-
#       subject_data[, x, drop = FALSE] %>%
#       tibble::rownames_to_column(var = "sample_id") %>%
#       dplyr::left_join(sample_info[, c("sample_id", "demographics_employment", "check_point")]) %>%
#       dplyr::rename("value" = x) %>%
#       dplyr::filter(!is.na(demographics_employment)) %>%
#       dplyr::group_by(check_point, demographics_employment) %>%
#       dplyr::summarize(
#         mean = median(value, na.rm = TRUE),
#         sd = sd(value, na.rm = TRUE),
#         n = n(),
#         sem = sd / sqrt(n)
#       ) %>%
#       ggplot(aes(check_point, mean)) +
#       geom_point(aes(color = demographics_employment)) +
#       geom_line(aes(color = demographics_employment,
#                     group = demographics_employment)) +
#       geom_errorbar(aes(
#         ymin = mean - sem,
#         ymax = mean + sem,
#         color = demographics_employment
#       ),
#       width = 0.2) +
#       theme_bw() +
#       scale_color_manual(values = employment_color)
#
#     ggsave(
#       plot,
#       filename = file.path("line_plot/", paste0(x, ".pdf")),
#       width = 7,
#       height = 5
#     )
#     ggsave(
#       plot,
#       filename = file.path("line_plot", paste0(x, ".png")),
#       width = 7,
#       height = 5
#     )
#   })




plot <-
  subject_data[, x, drop = FALSE] %>%
  tibble::rownames_to_column(var = "sample_id") %>%
  dplyr::left_join(sample_info[, c("sample_id", "demographics_employment", "check_point")]) %>%
  dplyr::rename("value" = x) %>%
  dplyr::filter(!is.na(demographics_employment)) %>%
  dplyr::group_by(check_point, demographics_employment) %>%
  dplyr::summarize(
    mean = median(value, na.rm = TRUE),
    sd = sd(value, na.rm = TRUE),
    n = n(),
    sem = sd / sqrt(n)
  ) %>%
  ggplot(aes(check_point, mean)) +
  geom_point(aes(color = demographics_employment)) +
  geom_line(aes(color = demographics_employment,
                group = demographics_employment)) +
  geom_errorbar(aes(
    ymin = mean - sem,
    ymax = mean + sem,
    color = demographics_employment
  ),
  width = 0.2) +
  theme_bw() +
  scale_color_manual(values = employment_color)

ggsave(
  plot,
  filename = file.path("line_plot/", paste0(x, ".pdf")),
  width = 7,
  height = 5
)
ggsave(
  plot,
  filename = file.path("line_plot", paste0(x, ".png")),
  width = 7,
  height = 5
)