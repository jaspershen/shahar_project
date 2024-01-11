no_source()

rm(list = ls())

library(tidyverse)

setwd(masstools::get_project_wd())

source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/survey_data_6_points/survey_data")

dir.create("3_data_analysis/3_stress_and_well_being/pss_burn_out_resilence_6_timepoints",
           recursive = TRUE)
setwd("3_data_analysis/3_stress_and_well_being/pss_burn_out_resilence_6_timepoints")

expression_data <-
  massdataset::extract_expression_data(survey_data)

sample_info <-
  massdataset::extract_sample_info(survey_data)

variable_info <-
  massdataset::extract_variable_info(survey_data)

rownames(expression_data) = variable_info$real_name

temp_data <-
  t(expression_data) %>%
  as.data.frame() %>%
  dplyr::select(c("Stress_PSS", "Burnout_total_OLBI", "Resilience_CDRISC"))


###correlations between them in each person
rownames(temp_data) == sample_info$sample_id

library(Hmisc)

cor_data_individual <-
  sample_info$subject_id %>%
  unique() %>%
  as.character() %>%
  purrr::map(function(x) {
    cat(x, " ")
    temp_sample_id <-
      sample_info %>%
      dplyr::filter(subject_id == x)
    temp <-
      temp_data[temp_sample_id$sample_id,]
    if (nrow(temp) < 5) {
      return(NULL)
    }
    temp_cor <-
      Hmisc::rcorr(as.matrix(temp), type = "spearman")

    cor_values <-
      temp_cor$r %>%
      as.data.frame() %>%
      rownames_to_column(var = "name1") %>%
      tidyr::pivot_longer(cols = -name1,
                          names_to = "name2",
                          values_to = "cor") %>%
      dplyr::filter(name1 != name2)

    cor_p <-
      temp_cor$P %>%
      as.data.frame() %>%
      rownames_to_column(var = "name1") %>%
      tidyr::pivot_longer(cols = -name1,
                          names_to = "name2",
                          values_to = "p") %>%
      dplyr::filter(name1 != name2)

    cor_data <-
      cor_values %>%
      dplyr::left_join(cor_p, by = c("name1", "name2")) %>%
      dplyr::mutate(subject_id = x)
    cor_data
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

cor_data_individual <-
  cor_data_individual %>%
  dplyr::rowwise() %>%
  dplyr::mutate(name = paste(sort(c(
    name1, name2, subject_id
  )), collapse = "_")) %>%
  dplyr::distinct(name, .keep_all = TRUE)


save(cor_data_individual, file = "cor_data_individual")

load("cor_data_individual")
library(gghalves)

plot_individual <-
  cor_data_individual %>%
  dplyr::mutate(name = stringr::str_replace(name, "^[0-9]{1,4}_", "")) %>%
  ggplot(aes(x = name, cor)) +
  geom_half_boxplot(side = "l", outlier.shape = NA) +
  geom_half_violin(side = "r") +
  geom_half_dotplot(side = "r", binwidth = 0.01) +
  theme_bw() +
  labs(x = "",
       y = "Spearman correlation") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1))

plot_individual

ggsave(plot_individual,
       file = "plot_individual.pdf",
       width = 8,
       height = 8)

ggsave(plot_individual,
       file = "plot_individual.png",
       width = 8,
       height = 8)

library(plyr)

temp <-
  temp_data %>%
  tibble::rownames_to_column(var = "sample_id") %>%
  dplyr::left_join(sample_info[, c("sample_id", "check_point")]) %>%
  plyr::dlply(.variables = .(check_point)) %>%
  purrr::map(function(x) {
    x %>%
      dplyr::select(-c(sample_id, check_point)) %>%
      colMeans(na.rm = TRUE)
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

cor.test(temp$Stress_PSS, temp$Burnout_total_OLBI, method = "spearman")

plot <-
  temp_data %>%
  tibble::rownames_to_column(var = "sample_id") %>%
  dplyr::left_join(sample_info[, c("sample_id", "subject_id")], by = "sample_id") %>%
  ggplot(aes(Stress_PSS, Burnout_total_OLBI)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Stress_PSS-vs-Burnout_total_OLBI.pdf",
       width = 7,
       height = 7)

ggsave(plot,
       filename = "Stress_PSS-vs-Burnout_total_OLBI.png",
       width = 7,
       height = 7)



cor.test(temp$Stress_PSS, temp$Resilience_CDRISC, method = "spearman")
cor.test(temp_data$Stress_PSS, temp_data$Resilience_CDRISC, method = "spearman")
plot <-
  temp_data %>%
  tibble::rownames_to_column(var = "sample_id") %>%
  dplyr::left_join(sample_info[, c("sample_id", "subject_id")], by = "sample_id") %>%
  ggplot(aes(Stress_PSS, Resilience_CDRISC)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Stress_PSS-vs-Resilience_CDRISC.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Stress_PSS-vs-Resilience_CDRISC.png",
       width = 7,
       height = 7)

cor.test(temp$Burnout_total_OLBI, temp$Resilience_CDRISC, method = "spearman")

plot <-
  temp_data %>%
  tibble::rownames_to_column(var = "sample_id") %>%
  dplyr::left_join(sample_info[, c("sample_id", "subject_id")], by = "sample_id") %>%
  ggplot(aes(Burnout_total_OLBI, Resilience_CDRISC)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw() +
  labs(subtitle = "Cor: -1; p: 0.01667")
plot
ggsave(plot,
       filename = "Burnout_total_OLBI-vs-Resilience_CDRISC.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Burnout_total_OLBI-vs-Resilience_CDRISC.png",
       width = 7,
       height = 7)

temp <-
  temp_data %>%
  tibble::rownames_to_column(var = "sample_id") %>%
  dplyr::left_join(sample_info[, c("sample_id", "subject_id", "check_point")], by = "sample_id") %>%
  tidyr::pivot_longer(
    cols = -c(sample_id, subject_id, check_point),
    names_to = "class",
    values_to = "score"
  )

library(plyr)

temp <-
  temp %>%
  plyr::dlply(.variables = .(check_point, class)) %>%
  purrr::map(function(x) {
    data.frame(
      check_point = x$check_point[1],
      class = x$class[1],
      mean = mean(x$score, na.rm = TRUE),
      sd = sd(x$score, na.rm = TRUE),
      sem = sd(x$score, na.rm = TRUE) / sqrt(nrow(x))
    )
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()


plot <-
  temp %>%
  ggplot(aes(x = check_point, y = mean)) +
  geom_point(aes(color = class), show.legend = TRUE) +
  geom_line(aes(group = class, color = class), show.legend = FALSE) +
  geom_errorbar(
    aes(
      x = check_point,
      ymin = mean - sem,
      ymax = mean + sem,
      color = class
    ),
    show.legend = FALSE,
    width = 0.2
  ) +
  theme_bw() 
  # facet_grid(cols = vars(class),  
  #            scales = "free")
plot

ggsave(plot,
       filename = "pss_burnout_resilence_sem_plot.pdf",
       width = 7,
       height = 5)

ggsave(plot,
       filename = "pss_burnout_resilence_sem_plot.png",
       width = 7,
       height = 5)

plot <-
  temp %>%
  ggplot(aes(x = check_point, y = mean)) +
  geom_point() +
  geom_line(aes(group = class)) +
  geom_errorbar(aes(
    x = check_point,
    ymin = mean - sd,
    ymax = mean + sd
  ),
  width = 0.2) +
  theme_bw() +
  facet_grid(cols = vars(class))
plot
ggsave(plot,
       filename = "pss_burnout_resilence_sd_plot.pdf",
       width = 10,
       height = 5)

ggsave(plot,
       filename = "pss_burnout_resilence_sd_plot.png",
       width = 10,
       height = 5)




temp_data %>% 
  tibble::rownames_to_column(var = "sample_id") %>% 
  dplyr::left_join(sample_info[,c("sample_id", "check_point")]) %>% 
  dplyr::filter(check_point == "1") %>% 
  pull(Stress_PSS) %>% 
  median(na.rm = TRUE)

27
14
# The PSS-10 scores are typically interpreted as follows:
# Low stress: 0-13
# Moderate stress: 14-26
# High stress: 27-40