no_source()
rm(list = ls())
library(tidyverse)
setwd(masstools::get_project_wd())

source("1_code/tools.R")

ema_data <-
  readr::read_csv("2_data/66491TheLastingChang-EMA_DATA_2023-08-04_1636.csv")

dir.create("3_data_analysis/1_data_preparation/ema_data")
setwd("3_data_analysis/1_data_preparation/ema_data")

###survey data
colnames(ema_data)
ema_data$record_id

sample_info <-
  ema_data %>%
  select(record_id:ema_date, ema_date_p_dwd)

###ema score
ema_score <-
  ema_data %>%
  select(-c(record_id:ema_date, ema_date_p_dwd))

ema_score1 <-
  ema_score[, 1:6]

ema_score2 <-
  ema_score[, -c(1:6)]

sample_info1 <-
  sample_info[, 1:5]

sample_info2 <-
  sample_info[, -5]

remove_idx1 <-
  ema_score1 %>%
  apply(1, function(x) {
    sum(is.na(x)) / ncol(ema_score1)
  }) %>%
  `==`(1) %>%
  which()

sample_info1 <-
  sample_info1[-remove_idx1,]

ema_score1 <-
  ema_score1[-remove_idx1,]

remove_idx2 <-
  ema_score2 %>%
  apply(1, function(x) {
    sum(is.na(x)) / ncol(ema_score2)
  }) %>%
  `==`(1) %>%
  which()

sample_info2 <-
  sample_info2[-remove_idx2,]

ema_score2 <-
  ema_score2[-remove_idx2,]

sample_info1$sample_id <-
  paste(sample_info1$record_id,
        sample_info1$redcap_repeat_instance,
        sep = "_")

sum(duplicated(sample_info1$sample_id))

ema_score1 <-
  as.data.frame(ema_score1)

rownames(ema_score1) <-
  sample_info1$sample_id

sample_info2$sample_id <-
  paste(sample_info2$record_id,
        sample_info2$redcap_repeat_instance,
        "post",
        sep = "_")

sum(duplicated(sample_info2$sample_id))

ema_score2 <-
  as.data.frame(ema_score2)

rownames(ema_score2) <-
  sample_info2$sample_id

colnames(ema_score1) <-
  colnames(ema_score2) <-
  c(paste("ema", 1:5, sep = "_"), "ema_complete")

sample_info1 <-
  sample_info1 %>%
  dplyr::rename(subject_id = record_id,
                date = ema_date) %>%
  dplyr::select(
    sample_id,
    subject_id,
    date,
    redcap_event_name,
    redcap_repeat_instrument,
    redcap_repeat_instance
  )

sample_info2 <-
  sample_info2 %>%
  dplyr::rename(subject_id = record_id,
                date = ema_date_p_dwd) %>%
  dplyr::select(
    sample_id,
    subject_id,
    date,
    redcap_event_name,
    redcap_repeat_instrument,
    redcap_repeat_instance
  )

sample_info <-
  rbind(sample_info1,
        sample_info2)

ema_score <-
  rbind(ema_score1,
        ema_score2)

rownames(ema_score) == sample_info$sample_id

library(plyr)

sample_info <-
  sample_info %>%
  plyr::dlply(.variables = .(subject_id)) %>%
  purrr::map(function(x) {
    x <-
      x %>%
      dplyr::arrange(date)
    x$check_point <-
      1:nrow(x)
    x
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

ema_score <-
  ema_score[sample_info$sample_id, ]

write.csv(ema_score, "ema_score.csv", row.names = FALSE)
write.csv(sample_info, "sample_info.csv", row.names = FALSE)

expression_data <-
  ema_score %>%
  t() %>%
  as.data.frame()

colnames(expression_data)
rownames(expression_data)

sample_info$sample_id == colnames(expression_data)

variable_info <-
  data.frame(variable_id = rownames(expression_data))

sample_info <-
  sample_info %>%
  dplyr::mutate(class = "Subject")

variable_info$real_name <- variable_info$variable_id
variable_info$real_name[1:5] <- 
  c("Energy", "Mood", "Focus", "Connectedness", "Clarity")

ema_data <-
  massdataset::create_mass_dataset(
    expression_data = expression_data,
    sample_info = sample_info,
    variable_info = variable_info
  )

save(ema_data, file = "ema_data")

save(expression_data, file = "expression_data")
save(sample_info, file = "sample_info")
save(variable_info, file = "variable_info")
