no_source()
rm(list = ls())
library(tidyverse)
setwd(masstools::get_project_wd())
source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/survey_data/survey_data")
load("3_data_analysis/1_data_preparation/ema_data/ema_data")

dir.create("3_data_analysis/3_stress_and_well_being/ema-vs-survey_data",
           recursive = TRUE)
setwd("3_data_analysis/3_stress_and_well_being/ema-vs-survey_data")

survey_expression_data <-
  massdataset::extract_expression_data(survey_data)
survey_sample_info <-
  massdataset::extract_sample_info(survey_data)

survey_variable_info <-
  massdataset::extract_variable_info(survey_data)

library(massdataset)

ema_data <-
  ema_data %>%
  activate_mass_dataset(what = "sample_info") %>%
  dplyr::filter(!is.na(date))

ema_expression_data <-
  massdataset::extract_expression_data(ema_data)
ema_sample_info <-
  massdataset::extract_sample_info(ema_data)
ema_variable_info <-
  massdataset::extract_variable_info(ema_data)

rownames(survey_expression_data) <- survey_variable_info$real_name

survey_temp_data <-
  t(survey_expression_data) %>%
  as.data.frame() %>%
  dplyr::select(c("Stress_PSS", "Burnout_total_OLBI", "Resilience_CDRISC"))

# colnames(survey_temp_data) <-
#   survey_variable_info$real_name[match(colnames(survey_temp_data), survey_variable_info$variable_id)]

ema_temp_data <-
  t(ema_expression_data) %>%
  as.data.frame() %>%
  dplyr::select(-c(ema_complete))

colnames(ema_temp_data) <-
  ema_variable_info$real_name[match(colnames(ema_temp_data), ema_variable_info$variable_id)]

dir.create("matched_plot")

# final_matched_result <-
#   unique(survey_sample_info$subject_id) %>%
#   as.character() %>%
#   purrr::map(
#     function(x) {
#       cat(x, " ")
#       temp_sample_info1 <-
#         survey_sample_info %>%
#         dplyr::filter(subject_id == x)
# 
#       temp_sample_info2 <-
#         ema_sample_info %>%
#         dplyr::filter(subject_id == x)
# 
#     matched_result <-
#       1:nrow(temp_sample_info1) %>%
#       purrr::map(function(idx1) {
#         # cat(idx1, " ")
#         time1 <- temp_sample_info1$survey_timestamp[idx1]
#         if(temp_sample_info1$check_point[idx1] == "2"){
#           idx2 <- which(as.numeric(
#             difftime(time1, temp_sample_info2$date, units = "hour")
#           ) >= -72 &
#             difftime(time1, temp_sample_info2$date, units = "hour") <= 24)
#         }else{
#           idx2 <- which(abs(as.numeric(
#             difftime(time1, temp_sample_info2$date, units = "hour")
#           )) <= 72)
#         }
# 
#         if (length(idx2) == 0) {
#           NULL
#         } else{
#           data.frame(
#             subject_id = temp_sample_info1$subject_id[idx1],
#             sample_id1 = temp_sample_info1$sample_id[idx1],
#             sample_id1_new = paste0(temp_sample_info1$sample_id[idx1], "-1"),
#             time1 = time1,
#             sample_id2 = temp_sample_info2$sample_id[idx2],
#             sample_id2_new = paste0(temp_sample_info2$sample_id[idx2], "-2"),
#             time2 = temp_sample_info2$date[idx2],
#             time_point1 = temp_sample_info1$check_point[idx1],
#             class1 = "survey",
#             class2 = "ema"
#           )
#         }
#       }) %>%
#       do.call(rbind, .) %>%
#       as.data.frame()
#     if (nrow(matched_result) > 0) {
#       plot <-
#         rbind(
#           data.frame(time = temp_sample_info1$survey_timestamp,
#                      class = "survey"),
#           data.frame(time = temp_sample_info2$date,
#                      class = "ema")
#         ) %>%
#         ggplot(aes(x = time, y = class)) +
#         geom_point() +
#         geom_segment(data = matched_result, aes(
#           x = time1,
#           y = class1,
#           xend = time2,
#           yend = class2
#         )) +
#         theme_bw()
# 
#       ggsave(
#         plot,
#         filename = file.path("matched_plot", paste0(x, ".pdf")),
#         width = 14,
#         height = 4
#       )
#     }
#     matched_result
#   })
# 
# save(final_matched_result, file = "final_matched_result")
load("final_matched_result")

###correlations between them in each person

final_matched_result %>% lapply(function(x)
  unique(x$time_point1) %>% length)  %>% unlist() %>% table()

# final_result <-
#   final_matched_result %>%
#   purrr::map(function(x) {
#     if (nrow(x) == 0) {
#       return(NULL)
#     }
# 
#     if (length(unique(x$time_point1)) < 4) {
#       return(NULL)
#     } else{
#       x <-
#         x %>%
#         dplyr::arrange(time_point1)
#       temp_data2 <-
#         x$time_point1 %>%
#         unique() %>%
#         purrr::map(function(y) {
#           temp_sample_id2 <-
#             x %>%
#             dplyr::filter(time_point1 == y) %>%
#             pull(sample_id2)
#           ema_temp_data[temp_sample_id2,] %>%
#             colMeans()
#         }) %>%
#         do.call(rbind, .) %>%
#         as.data.frame()
#       rownames(temp_data2) <-
#         x$time_point1 %>%
#         unique()
# 
#       temp_data1 <-
#         survey_temp_data[unique(x$sample_id1), ]
# 
#       cbind(temp_data1, temp_data2) %>%
#         dplyr::mutate(subject_id = x$subject_id[1])
# 
#     }
# 
#   })
# 
# save(final_result, file = "final_result")
load("final_result")

library(Hmisc)

cor_data_individual <-
  final_result %>%
  purrr::map(function(x) {
    if (is.null(x)) {
      return(NULL)
    }
    if (nrow(x) < 5) {
      return(NULL)
    }
    temp_cor <-
      Hmisc::rcorr(as.matrix(x %>% dplyr::select(-subject_id)), type = "spearman")

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
      dplyr::mutate(subject_id = x$subject_id[1])
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

###only remain the cor between survey and ema
remain_idx1 <-
  which(
    stringr::str_detect(cor_data_individual$name1, "ema") &
      !stringr::str_detect(cor_data_individual$name2, "ema")
  )

remain_idx2 <-
  which(
    !stringr::str_detect(cor_data_individual$name1, "ema") &
      stringr::str_detect(cor_data_individual$name2, "ema")
  )

cor_data_individual <-
  cor_data_individual[c(remain_idx1, remain_idx2),]

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
  theme(axis.text.x = element_text(
    angle = 45,
    hjust = 1,
    vjust = 1
  ))

plot_individual

ggsave(plot_individual,
       file = "plot_individual.pdf",
       width = 20,
       height = 6)

library(plyr)

temp <-
  final_result %>%
  purrr::map(function(x) {
    if (is.null(x)) {
      return(NULL)
    }
    
    x %>%
      dplyr::select(-subject_id) %>%
      tibble::rownames_to_column(var = "sample_id") %>%
      dplyr::mutate(check_point = stringr::str_extract(sample_id, "[0-9]${1,2}")) %>%
      dplyr::select(-sample_id)
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  plyr::dlply(.variables = .(check_point)) %>%
  purrr::map(function(x) {
    x %>%
      dplyr::select(-check_point) %>%
      colMeans(na.rm = TRUE)
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

cor.test(temp$Stress_PSS, temp$Energy, method = "spearman")
cor.test(temp$Stress_PSS, temp$Mood, method = "spearman")
cor.test(temp$Stress_PSS, temp$Focus, method = "spearman")
cor.test(temp$Stress_PSS, temp$Connectedness, method = "spearman")
cor.test(temp$Stress_PSS, temp$Clarity, method = "spearman")

cor.test(temp$Burnout_total_OLBI, temp$Energy, method = "spearman")
cor.test(temp$Burnout_total_OLBI, temp$Mood, method = "spearman")
cor.test(temp$Burnout_total_OLBI, temp$Focus, method = "spearman")
cor.test(temp$Burnout_total_OLBI, temp$Connectedness, method = "spearman")
cor.test(temp$Burnout_total_OLBI, temp$Clarity, method = "spearman")

cor.test(temp$Resilience_CDRISC, temp$Energy, method = "spearman")
cor.test(temp$Resilience_CDRISC, temp$Mood, method = "spearman")
cor.test(temp$Resilience_CDRISC, temp$Focus, method = "spearman")
cor.test(temp$Resilience_CDRISC, temp$Connectedness, method = "spearman")
cor.test(temp$Resilience_CDRISC, temp$Clarity, method = "spearman")

temp <-
  final_result %>%
  do.call(rbind, .) %>%
  as.data.frame()

cor.test(temp$Stress_PSS, temp$Energy, method = "spearman")
cor.test(temp$Stress_PSS, temp$Mood, method = "spearman")
cor.test(temp$Stress_PSS, temp$Focus, method = "spearman")
cor.test(temp$Stress_PSS, temp$Connectedness, method = "spearman")
cor.test(temp$Stress_PSS, temp$Clarity, method = "spearman")

cor.test(temp$Burnout_total_OLBI, temp$Energy, method = "spearman")
cor.test(temp$Burnout_total_OLBI, temp$Mood, method = "spearman")
cor.test(temp$Burnout_total_OLBI, temp$Focus, method = "spearman")
cor.test(temp$Burnout_total_OLBI, temp$Connectedness, method = "spearman")
cor.test(temp$Burnout_total_OLBI, temp$Clarity, method = "spearman")

cor.test(temp$Resilience_CDRISC, temp$Energy, method = "spearman")
cor.test(temp$Resilience_CDRISC, temp$Mood, method = "spearman")
cor.test(temp$Resilience_CDRISC, temp$Focus, method = "spearman")
cor.test(temp$Resilience_CDRISC, temp$Connectedness, method = "spearman")
cor.test(temp$Resilience_CDRISC, temp$Clarity, method = "spearman")

plot <-
  temp %>%
  ggplot(aes(Stress_PSS, Energy)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Stress_PSS-Energy.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Stress_PSS-Energy.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Stress_PSS, Mood)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Stress_PSS-Mood.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Stress_PSS-Mood.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Stress_PSS, Focus)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Stress_PSS-Focus.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Stress_PSS-Focus.png",
       width = 7,
       height = 7)


plot <-
  temp %>%
  ggplot(aes(Stress_PSS, Connectedness)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Stress_PSS-Connectedness.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Stress_PSS-Connectedness.png",
       width = 7,
       height = 7)


plot <-
  temp %>%
  ggplot(aes(Stress_PSS, Clarity)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Stress_PSS-Clarity.pdf",
       width = 7,
       height = 7)

ggsave(plot,
       filename = "Stress_PSS-Clarity.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Burnout_total_OLBI, Energy)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Burnout_total_OLBI-Energy.pdf",
       width = 7,
       height = 7)

ggsave(plot,
       filename = "Burnout_total_OLBI-Energy.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Burnout_total_OLBI, Mood)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Burnout_total_OLBI-Mood.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Burnout_total_OLBI-Mood.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Burnout_total_OLBI, Focus)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Burnout_total_OLBI-Focus.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Burnout_total_OLBI-Focus.png",
       width = 7,
       height = 7)


plot <-
  temp %>%
  ggplot(aes(Burnout_total_OLBI, Connectedness)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Burnout_total_OLBI-Connectedness.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Burnout_total_OLBI-Connectedness.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Burnout_total_OLBI, Clarity)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Burnout_total_OLBI-Clarity.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Burnout_total_OLBI-Clarity.png",
       width = 7,
       height = 7)


plot <-
  temp %>%
  ggplot(aes(Resilience_CDRISC, Energy)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Resilience_CDRISC-Energy.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Resilience_CDRISC-Energy.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Resilience_CDRISC, Mood)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Resilience_CDRISC-Mood.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Resilience_CDRISC-Mood.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Resilience_CDRISC, Focus)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Resilience_CDRISC-Focus.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Resilience_CDRISC-Focus.png",
       width = 7,
       height = 7)


plot <-
  temp %>%
  ggplot(aes(Resilience_CDRISC, Connectedness)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Resilience_CDRISC-Connectedness.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Resilience_CDRISC-Connectedness.png",
       width = 7,
       height = 7)

plot <-
  temp %>%
  ggplot(aes(Resilience_CDRISC, Clarity)) +
  geom_point(size = 2,
             aes(color = subject_id),
             show.legend = FALSE) +
  geom_smooth(method = "lm") +
  theme_bw()
plot
ggsave(plot,
       filename = "Resilience_CDRISC-Clarity.pdf",
       width = 7,
       height = 7)
ggsave(plot,
       filename = "Resilience_CDRISC-Clarity.png",
       width = 7,
       height = 7)

