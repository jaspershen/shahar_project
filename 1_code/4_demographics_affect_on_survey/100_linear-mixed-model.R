no_source()

rm(list = ls())

library(tidyverse)

setwd(masstools::get_project_wd())

source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/survey_data/survey_data")
load("3_data_analysis/1_data_preparation/phenotype_info/phenotype_data")

load("3_data_analysis/3_stress_and_well_being/correlation/module_info")

module_info <-
  seq_along(module_info) %>%
  purrr::map(function(idx) {
    data.frame(survey = module_info[[idx]],
               class = idx)
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

dir.create(
  "3_data_analysis/4_demographics_affect_on_survey/linear_mixed_model",
  recursive = TRUE
)
setwd("3_data_analysis/4_demographics_affect_on_survey/linear_mixed_model")

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

rownames(subject_data) == sample_info$sample_id

sample_info %>%
  dplyr::distinct(subject_id, .keep_all = TRUE) %>%
  pull(demographics_race) %>%
  table()

###remove the samples without some demographics information
sample_info <-
  sample_info %>%
  dplyr::select(
    subject_id,
    sample_id,
    check_point,
    sex = demographics_sex,
    race = demographics_race,
    education = demographics_education,
    living = demographics_living,
    children = demographics_children,
    employment = demographics_employment,
    income = demographics_income,
    watch = demographics_watch,
    participate = demographics_participate,
    pre_dwd = demographics_pre_dwd,
    age
  )

sample_info <-
  sample_info %>%
  filter(if_all(everything(), ~ .x != "Prefer not to say"))

sample_info$check_point <-
  as.numeric(sample_info$check_point)

sample_info <-
  sample_info %>%
  dplyr::mutate(
    income = case_when(
      income == "<25000" ~ 1,
      income == "25000-50000" ~ 2,
      income == "50000-100000" ~ 3,
      income == "100000-200000" ~ 4,
      income == ">200,000" ~ 5
    )
  )

sample_info <-
  sample_info %>%
  dplyr::mutate(race = case_when(
    race == "Caucasian" ~ "Caucasian",
    race != "Caucasian" ~ "non-Caucasian"
  )) %>%
  dplyr::mutate(
    education =
      case_when(
        education == "Bachelor" ~ "<=Bachelor",
        education == "High School " ~ "<=Bachelor",
        education == "Master" ~ ">Bachelor",
        education == "Ph.D. or higher" ~ ">Bachelor",
        education == "Trade School" ~ "<=Bachelor"
      )
  ) %>%
  dplyr::mutate(living = case_when(
    living == "Homeowner" ~ "Homeowner",
    living != "Homeowner" ~ "non-Homeowner"
  )) %>%
  dplyr::mutate(children = case_when(children == 0 ~ 0,
                                     children != 0 ~ 1)) %>%
  dplyr::mutate(
    employment = case_when(
      employment == "Business Owner Full-Time" ~ "Employed",
      employment == "Business Owner Part-Time" ~ "Employed",
      employment == "Employed Full-Time" ~ "Employed",
      employment == "Employed Part-Time" ~ "Employed",
      employment == "Retired" ~ "Unemployed",
      employment == "Seeking opportunities" ~ "Unemployed",
      employment == "Unemployed" ~ "Unemployed"
    )
  ) %>%
  dplyr::mutate(participate = case_when(
    participate == "Alone" ~ "Alone",
    participate != "Alone" ~ "Non-Alone"
  )) %>%
  dplyr::mutate(pre_dwd = case_when(pre_dwd == 0 ~ 0,
                                    pre_dwd != 0 ~ 1))

subject_data <-
  subject_data[sample_info$sample_id, ]

library(lme4)
library(lmerTest)
#
# all_linear_models <-
#   seq_along(colnames(subject_data)) %>%
#   purrr::map(function(idx) {
#     cat(idx, " ")
#     temp_data <-
#       data.frame(sample_info %>% dplyr::select(-sample_id),
#                  value = subject_data[, idx])
#     mix_lienar_model <-
#       lmerTest::lmer(
#         value ~ sex + race + education + living + children + employment +
#           income + watch + participate + pre_dwd + age + (1 |
#                                                             subject_id) +
#           check_point,
#         data = temp_data
#       )
#     mix_lienar_model
#   })
#
# names(all_linear_models) <- colnames(subject_data)
# save(all_linear_models, file = "all_linear_models")

# View the summary of the model

load("all_linear_models")
names(all_linear_models)

result <-
  seq_along(all_linear_models) %>%
  purrr::map(function(idx) {
    summary(all_linear_models[[idx]])$coefficients %>%
      as.data.frame() %>%
      tibble::rownames_to_column("demographic") %>%
      dplyr::mutate(survey = names(all_linear_models)[idx]) %>%
      dplyr::select(survey, demographic, Estimate, p = `Pr(>|t|)`)
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

result <-
  result %>%
  # dplyr::filter(p < 0.05) %>%
  dplyr::filter(!demographic %in% c("(Intercept)", "check_point"))

result <-
  result %>%
  dplyr::left_join(module_info, by = "survey") %>%
  dplyr::arrange(class, survey, demographic)

write.csv(result, "result.csv", row.names = FALSE)

result_significant <-
  result %>%
  dplyr::filter(p < 0.05) %>%
  dplyr::filter(!demographic %in% c("(Intercept)", "check_point"))

write.csv(result_significant,
          "result_significant.csv", row.names = FALSE)

result_significant

####data visualization for results
result <-
  result %>%
  dplyr::mutate(survey = factor(survey, levels = unique(survey)))

result %>%
  dplyr::select(survey, class) %>%
  dplyr::distinct(survey, .keep_all = TRUE)

library(ggh4x)

new_strips <-
  strip_themed(
    # Horizontal strips
    background_x = elem_list_rect(fill = c(
      rep(survey_color[1], 8),
      rep(survey_color[2], 15)
    )),
    text_x = elem_list_text(colour = c("white"),
                            angle = 90),
    by_layer_x = FALSE,
    # # Vertical strips
    # background_y = elem_list_rect(fill = c("gold", "tomato", "deepskyblue")),
    text_y = elem_list_text(angle = 0)
    # by_layer_y = FALSE
  )


result %>%
  dplyr::mutate(survey = factor(survey, levels = unique(survey))) %>%
  dplyr::mutate(pos_neg = case_when(Estimate > 0 ~ "positive",
                                    Estimate < 0 ~ "negative")) %>%
  dplyr::mutate(
    significant = case_when(
      p < 0.05 & Estimate > 0 ~ "positive",
      p < 0.05 & Estimate < 0 ~ "negative",
      p >= 0.05 ~ "n.s"
    )
  ) %>%
  ggplot(aes(x = Estimate, y = "0")) +
  geom_vline(xintercept = 0, color = "red") +
  geom_point(aes(
    size = -log(p, 10),
    color = pos_neg,
    fill = significant
  ),
  shape = 21) +
  facet_grid2(
    rows = vars(demographic),
    cols = vars(survey),
    strip = new_strips
  ) +
  theme_bw() +
  labs(y = "") +
  theme(
    panel.grid = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  ) +
  scale_color_manual(values = pos_neg_color) +
  scale_fill_manual(values = pos_neg_color)

remove_survey <-
  result %>%
  dplyr::group_by(survey) %>%
  dplyr::summarise(n = sum(p < 0.05)) %>%
  dplyr::select(survey, n) %>%
  dplyr::filter(n == 0) %>%
  dplyr::pull(survey)

remove_demographic <-
  result %>%
  dplyr::group_by(demographic) %>%
  dplyr::summarise(n = sum(p < 0.05)) %>%
  dplyr::select(demographic, n) %>%
  dplyr::filter(n == 0) %>%
  dplyr::pull(demographic)

temp <-
  result %>%
  dplyr::filter(!survey %in% remove_survey) %>%
  dplyr::filter(!demographic %in% remove_demographic)


temp <-
  temp %>%
  dplyr::mutate(survey = as.character(survey)) %>%
  dplyr::mutate(survey = factor(survey, levels = unique(survey)))

temp %>%
  dplyr::select(survey, class) %>%
  dplyr::distinct(survey, .keep_all = TRUE)

new_strips <-
  strip_themed(
    # Horizontal strips
    background_x = elem_list_rect(fill = c(
      rep(survey_color[1], 6),
      rep(survey_color[2], 14)
    )),
    text_x = elem_list_text(colour = c("white"),
                            angle = 90),
    by_layer_x = FALSE,
    # # Vertical strips
    # background_y = elem_list_rect(fill = c("gold", "tomato", "deepskyblue")),
    text_y = elem_list_text(angle = 0)
    # by_layer_y = FALSE
  )

plot <-
  temp %>%
  dplyr::mutate(pos_neg = case_when(Estimate > 0 ~ "positive",
                                    Estimate < 0 ~ "negative")) %>%
  dplyr::mutate(
    significant = case_when(
      p < 0.05 & Estimate > 0 ~ "positive",
      p < 0.05 & Estimate < 0 ~ "negative",
      p >= 0.05 ~ "n.s"
    )
  ) %>%
  ggplot(aes(x = Estimate, y = "0")) +
  geom_vline(xintercept = 0, color = "black") +
  geom_point(aes(
    size = -log(p, 10),
    color = pos_neg,
    fill = significant
  ),
  shape = 21) +
  facet_grid2(
    rows = vars(demographic),
    cols = vars(survey),
    strip = new_strips
  ) +
  theme_bw() +
  labs(y = "") +
  theme(
    panel.grid = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.spacing = unit(0.1, "lines")
  ) +
  scale_color_manual(values = pos_neg_color) +
  scale_fill_manual(values = pos_neg_color) +
  scale_size_continuous(range = c(0.5, 3))
plot


ggsave("demogranphics_vs_survey.pdf", plot, width = 9.3, 
       height = 4)

ggsave("demogranphics_vs_survey.png", plot, width = 9.3, 
       height = 4)
