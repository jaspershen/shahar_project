no_source()
rm(list = ls())
library(tidyverse)
setwd(masstools::get_project_wd())
source("1_code/tools.R")

survey_data <-
  readr::read_csv("2_data/66491TheLastingChang-ReportDemographicsC1_DATA_2023-12-20_2109.csv")

survey_data2 <-
  readr::read_csv("2_data/66491TheLastingChang-Checkpoint5_DATA_2023-08-04_1646.csv")

survey_data <-
  survey_data %>%
  dplyr::rename(redcap_survey_identifier = redcap_repeat_instrument) %>%
  dplyr::select(-dplyr::contains("demographic")) %>%
  dplyr::select(-c(redcap_repeat_instance, person_obtaining_consent_complete))

setdiff(colnames(survey_data), colnames(survey_data2))
setdiff(colnames(survey_data2), colnames(survey_data))

dir.create("3_data_analysis/1_data_preparation/survey_data_6_points")
setwd("3_data_analysis/1_data_preparation/survey_data_6_points")

###survey data
colnames(survey_data)
survey_data$record_id

sample_info <-
  survey_data[, 1:4] %>%
  dplyr::select(-c(contains("_timestamp")))

save(sample_info, file = "sample_info.rda")

timestamp <-
  survey_data %>%
  dplyr::select(c(contains("_timestamp")))

sample_info <-
  cbind(sample_info, timestamp)

###pfi score
pfi_score <-
  survey_data %>%
  dplyr::select(contains("pfi"))

pfi_c6_names <-
  grep("c4_5_c6$", colnames(pfi_score), value = TRUE)

pfi_c5_names <-
  grep("c4_5$", colnames(pfi_score), value = TRUE)

pfi_c4_names <-
  grep("c4$", colnames(pfi_score), value = TRUE)

pfi_c3_names <-
  grep("v3$", colnames(pfi_score), value = TRUE)

pfi_c2_names <-
  grep("c2$", colnames(pfi_score), value = TRUE)

pfi_c1_names <-
  grep("pfi_[0-9]{1,2}$", colnames(pfi_score), value = TRUE)

temp_name <-
  list(pfi_c1_names,
       pfi_c2_names,
       pfi_c3_names,
       pfi_c4_names,
       pfi_c5_names,
       pfi_c6_names)

pfi <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    pfi_c <-
      survey_data[, c("record_id", x)]
    colnames(pfi_c) <-
      stringr::str_extract(colnames(pfi_c), "pfi_[0-9]{1,2}")
    colnames(pfi_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(pfi_c, 1, function(x) {
        sum(is.na(x)) / (ncol(pfi_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    pfi_c <-
      pfi_c[-remove_idx,]
    pfi_c <-
      pfi_c[, c(colnames(pfi_c)[1],
                stringr::str_sort(colnames(pfi_c)[-1], numeric = TRUE))]
    pfi_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

pfi %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

pfi %>% lapply(function(x) {
  colnames(x)
})

pfi <-
  pfi %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(pfi))

pfi_fulfillment <-
  pfi[, c("pfi_1",
          "pfi_2",
          "pfi_3",
          "pfi_4",
          "pfi_5",
          "pfi_6")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

pfi_emotexhaust <-
  pfi[, c("pfi_7",
          "pfi_8",
          "pfi_9",
          "pfi_10")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

pfi_disengagement <-
  pfi[, c("pfi_11",
          "pfi_12",
          "pfi_13",
          "pfi_14",
          "pfi_15",
          "pfi_16")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

pfi <-
  pfi %>%
  dplyr::mutate(
    pfi_fulfillment = pfi_fulfillment,
    pfi_emotexhaust = pfi_emotexhaust,
    pfi_disengagement = pfi_disengagement
  ) %>%
  dplyr::select(
    subject_id,
    check_point,
    sample_id,
    pfi_fulfillment,
    pfi_emotexhaust,
    pfi_disengagement,
    dplyr::everything()
  )

save(pfi, file = "pfi")

load("pfi")

###The Connor-Davidson Resilience Scale (CD-RISC 10)
cdrisc <-
  survey_data %>%
  dplyr::select(contains("cdrisc"))

cdrisc_c6_names <-
  grep("c4_5_c6$", colnames(cdrisc), value = TRUE)

cdrisc_c5_names <-
  grep("c4_5$", colnames(cdrisc), value = TRUE)

cdrisc_c4_names <-
  grep("c4$", colnames(cdrisc), value = TRUE)

cdrisc_c3_names <-
  grep("v3$", colnames(cdrisc), value = TRUE)

cdrisc_c2_names <-
  grep("c2$", colnames(cdrisc), value = TRUE)

cdrisc_c1_names <-
  grep("cdrisc_[0-9]{1,2}$", colnames(cdrisc), value = TRUE)

temp_name <-
  list(
    cdrisc_c1_names,
    cdrisc_c2_names,
    cdrisc_c3_names,
    cdrisc_c4_names,
    cdrisc_c5_names,
    cdrisc_c5_names
  )

cdrisc <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    cdrisc_c <-
      survey_data[, c("record_id", x)]
    colnames(cdrisc_c) <-
      stringr::str_extract(colnames(cdrisc_c), "cdrisc_[0-9]{1,2}")
    colnames(cdrisc_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(cdrisc_c, 1, function(x) {
        sum(is.na(x)) / (ncol(cdrisc_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    cdrisc_c <-
      cdrisc_c[-remove_idx, ]
    cdrisc_c <-
      cdrisc_c[, c(colnames(cdrisc_c)[1],
                   stringr::str_sort(colnames(cdrisc_c)[-1], numeric = TRUE))]
    cdrisc_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

cdrisc %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

cdrisc %>% lapply(function(x) {
  colnames(x)
})

cdrisc <-
  cdrisc %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(cdrisc))

resilience_total <- cdrisc[, -c(1:3)] %>%
  apply(1, function(x) {
    sum(x, na.rm = TRUE)
  })

cdrisc <-
  cdrisc %>%
  dplyr::mutate(resilience_total = resilience_total) %>%
  dplyr::select(subject_id,
                check_point,
                sample_id,
                resilience_total,
                dplyr::everything())

save(cdrisc, file = "cdrisc")
load("cdrisc")

###The Connor-Davidson Resilience Scale (CD-RISC 10)
perma <-
  survey_data %>%
  dplyr::select(contains("perma"))

perma_c6_names <-
  grep("c4_5_c6$", colnames(perma), value = TRUE)

perma_c5_names <-
  grep("c4_5$", colnames(perma), value = TRUE)

perma_c4_names <-
  grep("c4$", colnames(perma), value = TRUE)

perma_c3_names <-
  grep("v3$", colnames(perma), value = TRUE)

perma_c2_names <-
  grep("c2$", colnames(perma), value = TRUE)

perma_c1_names <-
  grep("perma_[0-9]{1,2}$", colnames(perma), value = TRUE)

temp_name <-
  list(
    perma_c1_names,
    perma_c2_names,
    perma_c3_names,
    perma_c4_names,
    perma_c5_names,
    perma_c6_names
  )

perma <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    perma_c <-
      survey_data[, c("record_id", x)]
    colnames(perma_c) <-
      stringr::str_extract(colnames(perma_c), "perma_[0-9]{1,2}")
    colnames(perma_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(perma_c, 1, function(x) {
        sum(is.na(x)) / (ncol(perma_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    perma_c <-
      perma_c[-remove_idx,]
    perma_c <-
      perma_c[, c(colnames(perma_c)[1],
                  stringr::str_sort(colnames(perma_c)[-1], numeric = TRUE))]
    perma_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

perma %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

perma %>% lapply(function(x) {
  colnames(x)
})

perma <-
  perma %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(perma))

perma_pos_emotions <-
  perma[, c("perma_5", "perma_10", "perma_22")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

perma_engagement <-
  perma[, c("perma_3", "perma_11", "perma_21")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

perma_relationships <-
  perma[, c("perma_6", "perma_15", "perma_19")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

perma_meaning <-
  perma[, c("perma_1", "perma_9", "perma_17")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

perma_accomplishment <-
  perma[, c("perma_2", "perma_8", "perma_16")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

perma_wellbeing <-
  perma[, c(
    "perma_5",
    "perma_10",
    "perma_22",
    "perma_3",
    "perma_11",
    "perma_21",
    "perma_6",
    "perma_15",
    "perma_19",
    "perma_1",
    "perma_9",
    "perma_17",
    "perma_2",
    "perma_8",
    "perma_16",
    "perma_23"
  )] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

perma_neg_emotion <-
  perma[, c("perma_7", "perma_14", "perma_20")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

perma_health <-
  perma[, c("perma_4", "perma_13", "perma_18")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE)
  })

perma <-
  perma %>%
  dplyr::mutate(
    perma_pos_emotions = perma_pos_emotions,
    perma_engagement = perma_engagement,
    perma_relationships = perma_relationships,
    perma_meaning = perma_meaning,
    perma_accomplishment = perma_accomplishment,
    perma_wellbeing = perma_wellbeing,
    perma_neg_emotion = perma_neg_emotion,
    perma_health = perma_health
  ) %>%
  dplyr::select(
    subject_id,
    check_point,
    sample_id,
    perma_pos_emotions,
    perma_engagement,
    perma_relationships,
    perma_meaning,
    perma_accomplishment,
    perma_wellbeing,
    perma_neg_emotion,
    perma_health,
    dplyr::everything()
  )

save(perma, file = "perma")

load("perma")


###The Perceived Stress Scale (PSS-10)
pss <-
  survey_data %>%
  dplyr::select(contains("pss"))

pss_c6_names <-
  grep("c4_5_c6$", colnames(pss), value = TRUE)

pss_c5_names <-
  grep("c4_5$", colnames(pss), value = TRUE)

pss_c4_names <-
  grep("c4$", colnames(pss), value = TRUE)

pss_c3_names <-
  grep("v3$", colnames(pss), value = TRUE)

pss_c2_names <-
  grep("c2$", colnames(pss), value = TRUE)

pss_c1_names <-
  grep("pss_[0-9]{1,2}$", colnames(pss), value = TRUE)

temp_name <-
  list(pss_c1_names,
       pss_c2_names,
       pss_c3_names,
       pss_c4_names,
       pss_c5_names,
       pss_c6_names)

pss <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    pss_c <-
      survey_data[, c("record_id", x)]
    colnames(pss_c) <-
      stringr::str_extract(colnames(pss_c), "pss_[0-9]{1,2}")
    colnames(pss_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(pss_c, 1, function(x) {
        sum(is.na(x)) / (ncol(pss_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    pss_c <-
      pss_c[-remove_idx,]
    pss_c <-
      pss_c[, c(colnames(pss_c)[1],
                stringr::str_sort(colnames(pss_c)[-1], numeric = TRUE))]
    pss_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

pss %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

pss %>% lapply(function(x) {
  colnames(x)
})

pss <-
  pss %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(pss))

pss$pss_4 <-
  4 - pss$pss_4

pss$pss_5 <-
  4 - pss$pss_5

pss$pss_7 <-
  4 - pss$pss_7

pss$pss_8 <-
  4 - pss$pss_8

colnames(pss)[which(colnames(pss) == "pss_4")] <- "pss_4_r"
colnames(pss)[which(colnames(pss) == "pss_5")] <- "pss_5_r"
colnames(pss)[which(colnames(pss) == "pss_7")] <- "pss_7_r"
colnames(pss)[which(colnames(pss) == "pss_8")] <- "pss_8_r"

pss_total <-
  pss[, -c(1:3)] %>%
  apply(1, function(x) {
    sum(x, na.rm = TRUE)
  })

pss <-
  pss %>%
  dplyr::mutate(pss_total = pss_total) %>%
  dplyr::select(subject_id,
                check_point,
                sample_id,
                pss_total,
                everything())

save(pss, file = "pss")

load("pss")

###The Oldenburg Burnout Inventory (OLBI)
olbi <-
  survey_data %>%
  dplyr::select(contains("olbi"))

olbi_c6_names <-
  grep("c4_5_c6$", colnames(olbi), value = TRUE)

olbi_c5_names <-
  grep("c4_5$", colnames(olbi), value = TRUE)

olbi_c4_names <-
  grep("c4$", colnames(olbi), value = TRUE)

olbi_c3_names <-
  grep("v3$", colnames(olbi), value = TRUE)

olbi_c2_names <-
  grep("c2$", colnames(olbi), value = TRUE)

olbi_c1_names <-
  grep("olbi_[0-9]{1,2}$", colnames(olbi), value = TRUE)

temp_name <-
  list(
    olbi_c1_names,
    olbi_c2_names,
    olbi_c3_names,
    olbi_c4_names,
    olbi_c5_names,
    olbi_c6_names
  )

olbi <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    olbi_c <-
      survey_data[, c("record_id", x)]
    colnames(olbi_c) <-
      stringr::str_extract(colnames(olbi_c), "olbi_[0-9]{1,2}")
    colnames(olbi_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(olbi_c, 1, function(x) {
        sum(is.na(x)) / (ncol(olbi_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    olbi_c <-
      olbi_c[-remove_idx,]
    olbi_c <-
      olbi_c[, c(colnames(olbi_c)[1],
                 stringr::str_sort(colnames(olbi_c)[-1], numeric = TRUE))]
    olbi_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

olbi %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

olbi %>% lapply(function(x) {
  colnames(x)
})

olbi <-
  olbi %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(olbi))

olbi$olbi_2 <- 5 - olbi$olbi_2
olbi$olbi_3 <- 5 - olbi$olbi_3
olbi$olbi_4 <- 5 - olbi$olbi_4
olbi$olbi_6 <- 5 - olbi$olbi_6
olbi$olbi_8 <- 5 - olbi$olbi_8
olbi$olbi_9 <- 5 - olbi$olbi_9
olbi$olbi_11 <- 5 - olbi$olbi_11
olbi$olbi_12 <- 5 - olbi$olbi_12

olbi <-
  olbi %>%
  dplyr::rename(
    olbi_2_r = olbi_2,
    olbi_3_r = olbi_3,
    olbi_4_r = olbi_4,
    olbi_6_r = olbi_6,
    olbi_8_r = olbi_8,
    olbi_9_r = olbi_9,
    olbi_11_r = olbi_11,
    olbi_12_r = olbi_12
  )

burnout_total <-
  olbi[, -c(1:3)] %>%
  apply(1, function(x) {
    sum(x, na.rm = TRUE)
  })

burnout_disengagement <-
  olbi[, c(
    "olbi_1",
    "olbi_3_r",
    "olbi_6_r",
    "olbi_7",
    "olbi_9_r",
    "olbi_11_r",
    "olbi_13",
    "olbi_15"
  )] %>%
  apply(1, function(x) {
    sum(x, na.rm = TRUE)
  })

burnout_exhaustion <-
  olbi[, c(
    "olbi_2_r",
    "olbi_4_r",
    "olbi_5",
    "olbi_8_r",
    "olbi_10",
    "olbi_12_r",
    "olbi_14",
    "olbi_16"
  )] %>%
  apply(1, function(x) {
    sum(x, na.rm = TRUE)
  })

olbi <-
  olbi %>%
  dplyr::mutate(
    burnout_total = burnout_total,
    burnout_disengagement = burnout_disengagement,
    burnout_exhaustion = burnout_exhaustion
  ) %>%
  dplyr::select(
    subject_id,
    check_point,
    sample_id,
    burnout_total,
    burnout_disengagement,
    burnout_exhaustion,
    everything()
  )

save(olbi, file = "olbi")
load("olbi")

###The General Self-Efficacy Scale (GSE)
gse <-
  survey_data %>%
  dplyr::select(contains("gse"))

gse_c6_names <-
  grep("c4_5_c6$", colnames(gse), value = TRUE)

gse_c5_names <-
  grep("c4_5$", colnames(gse), value = TRUE)

gse_c4_names <-
  grep("c4$", colnames(gse), value = TRUE)

gse_c3_names <-
  grep("v3$", colnames(gse), value = TRUE)

gse_c2_names <-
  grep("c2$", colnames(gse), value = TRUE)

gse_c1_names <-
  grep("gse_[0-9]{1,2}$", colnames(gse), value = TRUE)

temp_name <-
  list(gse_c1_names,
       gse_c2_names,
       gse_c3_names,
       gse_c4_names,
       gse_c5_names,
       gse_c6_names)

gse <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    gse_c <-
      survey_data[, c("record_id", x)]
    colnames(gse_c) <-
      stringr::str_extract(colnames(gse_c), "gse_[0-9]{1,2}")
    colnames(gse_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(gse_c, 1, function(x) {
        sum(is.na(x)) / (ncol(gse_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    gse_c <-
      gse_c[-remove_idx,]
    gse_c <-
      gse_c[, c(colnames(gse_c)[1],
                stringr::str_sort(colnames(gse_c)[-1], numeric = TRUE))]
    gse_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

gse %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

gse %>% lapply(function(x) {
  colnames(x)
})

gse <-
  gse %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(gse))

self_efficacy_total <-
  gse[, -c(1:3)] %>%
  apply(1, function(x) {
    sum(x, na.rm = TRUE)
  })

gse <-
  gse %>%
  dplyr::mutate(self_efficacy_total = self_efficacy_total) %>%
  dplyr::select(subject_id,
                check_point,
                sample_id,
                self_efficacy_total,
                everything())

save(gse, file = "gse")

load("gse")

###The World Health Organization Quality of Life (WHOQOL-BREF – 26)
who <-
  survey_data %>%
  dplyr::select(contains("who"))

who_c6_names <-
  grep("c4_5_c6", colnames(who), value = TRUE)

who_c5_names <-
  grep("c4_5$", colnames(who), value = TRUE)

who_c4_names <-
  grep("c4$", colnames(who), value = TRUE)

who_c3_names <-
  grep("v3$", colnames(who), value = TRUE)

who_c2_names <-
  grep("c2$", colnames(who), value = TRUE)

who_c1_names <-
  grep("who_[0-9]{1,2}$", colnames(who), value = TRUE)

temp_name <-
  list(who_c1_names,
       who_c2_names,
       who_c3_names,
       who_c4_names,
       who_c5_names,
       who_c6_names)

who <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    who_c <-
      survey_data[, c("record_id", x)]
    colnames(who_c) <-
      stringr::str_extract(colnames(who_c), "who_[0-9]{1,2}")
    colnames(who_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(who_c, 1, function(x) {
        sum(is.na(x)) / (ncol(who_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    who_c <-
      who_c[-remove_idx,]
    who_c <-
      who_c[, c(colnames(who_c)[1],
                stringr::str_sort(colnames(who_c)[-1], numeric = TRUE))]
    who_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

who %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

who %>% lapply(function(x) {
  colnames(x)
})

who <-
  who %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(who))

who$who_3 <- 6 - who$who_3
who$who_4 <- 6 - who$who_4
who$who_26 <- 6 - who$who_26

who <-
  who %>%
  dplyr::rename(who_3_r = who_3,
                who_4_r = who_4,
                who_26_r = who_26)

dom1 <-
  who[, c("who_3_r",
          "who_4_r",
          "who_10",
          "who_15",
          "who_16",
          "who_17",
          "who_18")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE) * 4
  })

dom2 <-
  who[, c("who_5", "who_6", "who_11", "who_19", "who_26_r")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE) * 4
  })

dom3 <-
  who[, c("who_20", "who_21", "who_22")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE) * 4
  })

dom4 <-
  who[, c("who_8",
          "who_9",
          "who_12",
          "who_13",
          "who_14",
          "who_23",
          "who_24",
          "who_25")] %>%
  apply(1, function(x) {
    mean(x, na.rm = TRUE) * 4
  })

who <-
  who %>%
  dplyr::mutate(
    dom1 = dom1,
    dom2 = dom2,
    dom3 = dom3,
    dom4 = dom4
  ) %>%
  dplyr::select(subject_id,
                check_point,
                sample_id,
                dom1,
                dom2,
                dom3,
                dom4,
                everything())

save(who, file = "who")

load("who")

###The Gratitude Questionnaire (GQ-6)
gratitude <-
  survey_data %>%
  dplyr::select(contains("gratitude"))

gratitude_c6_names <-
  grep("c4_5_c6$", colnames(gratitude), value = TRUE)

gratitude_c5_names <-
  grep("c4_5$", colnames(gratitude), value = TRUE)

gratitude_c4_names <-
  grep("c4$", colnames(gratitude), value = TRUE)

gratitude_c3_names <-
  grep("v3$", colnames(gratitude), value = TRUE)

gratitude_c2_names <-
  grep("c2$", colnames(gratitude), value = TRUE)

gratitude_c1_names <-
  grep("gratitude_[0-9]{1,2}$", colnames(gratitude), value = TRUE)

temp_name <-
  list(
    gratitude_c1_names,
    gratitude_c2_names,
    gratitude_c3_names,
    gratitude_c4_names,
    gratitude_c5_names,
    gratitude_c6_names
  )

gratitude <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    gratitude_c <-
      survey_data[, c("record_id", x)]
    colnames(gratitude_c) <-
      stringr::str_extract(colnames(gratitude_c), "gratitude_[0-9]{1,2}")
    colnames(gratitude_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(gratitude_c, 1, function(x) {
        sum(is.na(x)) / (ncol(gratitude_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    gratitude_c <-
      gratitude_c[-remove_idx,]
    gratitude_c <-
      gratitude_c[, c(colnames(gratitude_c)[1],
                      stringr::str_sort(colnames(gratitude_c)[-1], numeric = TRUE))]
    gratitude_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

gratitude %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

gratitude %>% lapply(function(x) {
  colnames(x)
})

gratitude <-
  gratitude %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(gratitude))

gratitude$gratitude_3 <- 8 - gratitude$gratitude_3
gratitude$gratitude_6 <- 8 - gratitude$gratitude_6

gratitude <-
  gratitude %>%
  dplyr::rename(gratitude_3_r = gratitude_3,
                gratitude_6_r = gratitude_6)

gratitude_total <-
  gratitude[, -c(1:3)] %>%
  apply(1, function(x) {
    sum(x, na.rm = TRUE)
  })

gratitude <-
  gratitude %>%
  dplyr::mutate(gratitude_total = gratitude_total) %>%
  dplyr::select(subject_id,
                check_point,
                sample_id,
                gratitude_total,
                everything())

save(gratitude, file = "gratitude")

load("gratitude")

###The Growth Mindset Questionnaire (GFMA)
gfma <-
  survey_data %>%
  dplyr::select(contains("gfma"))


gfma_c6_names <-
  grep("c4_5_c6$", colnames(gfma), value = TRUE)

gfma_c5_names <-
  grep("c4_5$", colnames(gfma), value = TRUE)

gfma_c4_names <-
  grep("c4$", colnames(gfma), value = TRUE)

gfma_c3_names <-
  grep("v3$", colnames(gfma), value = TRUE)

gfma_c2_names <-
  grep("c2$", colnames(gfma), value = TRUE)

gfma_c1_names <-
  grep("gfma_[0-9]{1,2}$", colnames(gfma), value = TRUE)

temp_name <-
  list(
    gfma_c1_names,
    gfma_c2_names,
    gfma_c3_names,
    gfma_c4_names,
    gfma_c5_names,
    gfma_c6_names
  )

gfma <-
  seq_along(temp_name) %>%
  purrr::map(function(idx) {
    x <-
      temp_name[[idx]]
    gfma_c <-
      survey_data[, c("record_id", x)]
    colnames(gfma_c) <-
      stringr::str_extract(colnames(gfma_c), "gfma_[0-9]{1,2}")
    colnames(gfma_c)[1] <- "subject_id"
    
    remove_idx <-
      apply(gfma_c, 1, function(x) {
        sum(is.na(x)) / (ncol(gfma_c) - 1)
      }) %>%
      `==`(1) %>%
      which()
    gfma_c <-
      gfma_c[-remove_idx,]
    gfma_c <-
      gfma_c[, c(colnames(gfma_c)[1],
                 stringr::str_sort(colnames(gfma_c)[-1], numeric = TRUE))]
    gfma_c %>%
      dplyr::mutate(check_point = idx) %>%
      dplyr::select(subject_id, check_point, dplyr::everything())
  })

gfma %>% lapply(function(x) {
  sum(duplicated(x$subject_id))
})

gfma %>% lapply(function(x) {
  colnames(x)
})

gfma <-
  gfma %>%
  do.call(rbind, .) %>%
  as.data.frame() %>%
  dplyr::mutate(sample_id = paste(subject_id, check_point, sep = "_")) %>%
  dplyr::select(subject_id, check_point, sample_id, dplyr::everything())

sum(is.na(gfma))

gfma$gfma_1 <- 3 - gfma$gfma_1
gfma$gfma_4 <- 3 - gfma$gfma_4
gfma$gfma_7 <- 3 - gfma$gfma_7
gfma$gfma_8 <- 3 - gfma$gfma_8
gfma$gfma_11 <- 3 - gfma$gfma_11
gfma$gfma_12 <- 3 - gfma$gfma_12
gfma$gfma_14 <- 3 - gfma$gfma_14
gfma$gfma_16 <- 3 - gfma$gfma_16
gfma$gfma_17 <- 3 - gfma$gfma_17
gfma$gfma_20 <- 3 - gfma$gfma_20

gfma <-
  gfma %>%
  dplyr::rename(
    gfma_1_r = gfma_1,
    gfma_4_r = gfma_4,
    gfma_7_r = gfma_7,
    gfma_8_r = gfma_8,
    gfma_11_r = gfma_11,
    gfma_12_r = gfma_12,
    gfma_14_r = gfma_14,
    gfma_16_r = gfma_16,
    gfma_17_r = gfma_17,
    gfma_20_r = gfma_20
  )

gfma_total <-
  gfma[, -c(1:3)] %>%
  apply(1, function(x) {
    sum(x, na.rm = TRUE)
  })

gfma <-
  gfma %>%
  dplyr::mutate(gfma_total = gfma_total) %>%
  dplyr::select(subject_id,
                check_point,
                sample_id,
                everything())

save(gfma, file = "gfma")
load("gfma")

library(plyr)

sample_info$study_surveys_timestamp

sample_info <-
  sample_info %>%
  dplyr::mutate(record_id = as.character(record_id)) %>%
  plyr::dlply(.variables = .(record_id)) %>%
  purrr::map(function(x) {
    cat(x$record_id[1], " ")
    if (any(colnames(x) == "study_surveys_timestamp")) {
      x$study_surveys_timestamp <-
        as.character(x$study_surveys_timestamp)
    } else{
      x$study_surveys_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys_2_timestamp")) {
      x$study_surveys_2_timestamp <-
        as.character(x$study_surveys_2_timestamp)
    } else{
      x$study_surveys_2_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys1_checkpoint2_timestamp")) {
      x$study_surveys1_checkpoint2_timestamp <-
        as.character(x$study_surveys1_checkpoint2_timestamp)
    } else{
      x$study_surveys1_checkpoint2_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys2_checkpoint2_timestamp")) {
      x$study_surveys2_checkpoint2_timestamp <-
        as.character(x$study_surveys2_checkpoint2_timestamp)
    } else{
      x$study_surveys2_checkpoint2_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys1_checkpoint3_timestamp")) {
      x$study_surveys1_checkpoint3_timestamp <-
        as.character(x$study_surveys1_checkpoint3_timestamp)
    } else{
      x$study_surveys1_checkpoint3_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys2_checkpoint3_timestamp")) {
      x$study_surveys2_checkpoint3_timestamp <-
        as.character(x$study_surveys2_checkpoint3_timestamp)
    } else{
      x$study_surveys2_checkpoint3_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys1_checkpoint4_timestamp")) {
      x$study_surveys1_checkpoint4_timestamp <-
        as.character(x$study_surveys1_checkpoint4_timestamp)
    } else{
      x$study_surveys1_checkpoint4_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys2_checkpoint4_timestamp")) {
      x$study_surveys2_checkpoint4_timestamp <-
        as.character(x$study_surveys2_checkpoint4_timestamp)
    } else{
      x$study_surveys2_checkpoint4_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys1_checkpoint5_timestamp")) {
      x$study_surveys1_checkpoint5_timestamp <-
        as.character(x$study_surveys1_checkpoint5_timestamp)
    } else{
      x$study_surveys1_checkpoint5_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys2_checkpoint5_timestamp")) {
      x$study_surveys2_checkpoint5_timestamp <-
        as.character(x$study_surveys2_checkpoint5_timestamp)
    } else{
      x$study_surveys2_checkpoint5_timestamp <-
        NA
    }
    
    
    if (any(colnames(x) == "study_surveys1_checkpoint6_timestamp")) {
      x$study_surveys1_checkpoint6_timestamp <-
        as.character(x$study_surveys1_checkpoint6_timestamp)
    } else{
      x$study_surveys1_checkpoint6_timestamp <-
        NA
    }
    
    if (any(colnames(x) == "study_surveys2_checkpoint6_timestamp")) {
      x$study_surveys2_checkpoint6_timestamp <-
        as.character(x$study_surveys2_checkpoint6_timestamp)
    } else{
      x$study_surveys2_checkpoint6_timestamp <-
        NA
    }
    
    x$study_surveys_timestamp[x$study_surveys_timestamp == "[not completed]"] <-
      NA
    x$study_surveys_2_timestamp[x$study_surveys_2_timestamp == "[not completed]"] <-
      NA
    
    x$study_surveys1_checkpoint2_timestamp[x$study_surveys1_checkpoint2_timestamp == "[not completed]"] <-
      NA
    x$study_surveys2_checkpoint2_timestamp[x$study_surveys2_checkpoint2_timestamp == "[not completed]"] <-
      NA
    
    x$study_surveys1_checkpoint3_timestamp[x$study_surveys1_checkpoint3_timestamp == "[not completed]"] <-
      NA
    x$study_surveys2_checkpoint3_timestamp[x$study_surveys2_checkpoint3_timestamp == "[not completed]"] <-
      NA
    
    x$study_surveys1_checkpoint4_timestamp[x$study_surveys1_checkpoint4_timestamp == "[not completed]"] <-
      NA
    x$study_surveys2_checkpoint4_timestamp[x$study_surveys2_checkpoint4_timestamp == "[not completed]"] <-
      NA
    
    x$study_surveys1_checkpoint5_timestamp[x$study_surveys1_checkpoint5_timestamp == "[not completed]"] <-
      NA
    x$study_surveys2_checkpoint5_timestamp[x$study_surveys2_checkpoint5_timestamp == "[not completed]"] <-
      NA
    
    x$study_surveys1_checkpoint6_timestamp[x$study_surveys1_checkpoint6_timestamp == "[not completed]"] <-
      NA
    x$study_surveys2_checkpoint6_timestamp[x$study_surveys2_checkpoint6_timestamp == "[not completed]"] <-
      NA
    
    time1 <- c(
      x$study_surveys_timestamp %>% as.POSIXct(tz = "UTC"),
      x$study_surveys_2_timestamp %>% as.POSIXct(tz = "UTC")
    )
    time2 <- c(
      x$study_surveys1_checkpoint2_timestamp %>% as.POSIXct(tz = "UTC"),
      x$study_surveys2_checkpoint2_timestamp %>% as.POSIXct(tz = "UTC")
    )
    time3 <- c(
      x$study_surveys1_checkpoint3_timestamp %>% as.POSIXct(tz = "UTC"),
      x$study_surveys2_checkpoint3_timestamp %>% as.POSIXct(tz = "UTC")
    )
    time4 <- c(
      x$study_surveys1_checkpoint4_timestamp %>% as.POSIXct(tz = "UTC"),
      x$study_surveys2_checkpoint4_timestamp %>% as.POSIXct(tz = "UTC")
    )
    
    time5 <- c(
      x$study_surveys1_checkpoint5_timestamp %>% as.POSIXct(tz = "UTC"),
      x$study_surveys2_checkpoint5_timestamp %>% as.POSIXct(tz = "UTC")
    )
    
    time6 <- c(
      x$study_surveys1_checkpoint6_timestamp %>% as.POSIXct(tz = "UTC"),
      x$study_surveys2_checkpoint6_timestamp %>% as.POSIXct(tz = "UTC")
    )
    
    time1 <- time1[!is.na(time1)] %>%
      unique() %>%
      mean()
    time2 <- time2[!is.na(time2)] %>%
      unique() %>%
      mean()
    time3 <- time3[!is.na(time3)] %>%
      unique() %>%
      mean()
    time4 <- time4[!is.na(time4)] %>%
      unique() %>%
      mean()
    time5 <- time5[!is.na(time5)] %>%
      unique() %>%
      mean()
    
    time6 <- time6[!is.na(time6)] %>%
      unique() %>%
      mean()
    
    data.frame(
      subject_id = x$record_id[1],
      sample_id = paste(x$record_id[1], 1:6, sep = "_"),
      survey_timestamp = c(time1, time2, time3, time4, time5, time6),
      check_point = as.character(1:6)
    )
      # dplyr::filter(!is.na(survey_timestamp))
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

dim(sample_info)

sum(duplicated(sample_info$sample_info))

survey_data <-
  cdrisc %>%
  dplyr::full_join(gfma, by = c("subject_id", "check_point", "sample_id")) %>%
  dplyr::full_join(gratitude, by = c("subject_id", "check_point", "sample_id")) %>%
  dplyr::full_join(gse, by = c("subject_id", "check_point", "sample_id")) %>%
  dplyr::full_join(olbi, by = c("subject_id", "check_point", "sample_id")) %>%
  dplyr::full_join(perma, by = c("subject_id", "check_point", "sample_id")) %>%
  dplyr::full_join(pfi, by = c("subject_id", "check_point", "sample_id")) %>%
  dplyr::full_join(pss, by = c("subject_id", "check_point", "sample_id")) %>%
  dplyr::full_join(who, by = c("subject_id", "check_point", "sample_id"))

expression_data <-
  survey_data %>%
  dplyr::select(-c("subject_id", "check_point")) %>%
  tibble::column_to_rownames("sample_id")

sample_info <-
  survey_data %>%
  dplyr::select(c("sample_id")) %>%
  dplyr::left_join(sample_info, by = "sample_id")

variable_info <-
  data.frame(variable_id = colnames(expression_data))

sample_info <-
  sample_info %>%
  dplyr::mutate(class = "Subject")

expression_data <-
  expression_data %>%
  t() %>%
  as.data.frame()

dim(sample_info)

sum(is.na(sample_info$subject_id))

sample_info <-
  sample_info %>%
  dplyr::filter(!is.na(subject_id))

###remove subjects who don't have baseline
remove_subject_id <-
  sample_info$subject_id %>%
  unique() %>%
  purrr::map(function(x) {
    sample_info %>%
      dplyr::filter(subject_id == x) %>%
      pull(check_point) %>%
      `!=`("1") %>%
      all()
  }) %>%
  unlist() %>%
  which()

remove_subject_id <-
  sample_info$subject_id[remove_subject_id]

if (length(remove_subject_id) > 0) {
  sample_info <-
    sample_info %>%
    dplyr::filter(!subject_id %in% remove_subject_id)
}

expression_data <-
  expression_data[, sample_info$sample_id]

head(variable_info)

variable_info$real_name <-
  variable_info$variable_id

variable_info$real_name[grep("perma_relationships", variable_info$real_name)] <-
  "Relationships_PERMA"

variable_info$real_name[grep("perma_wellbeing", variable_info$real_name)] <-
  "Wellbeing_total_PERMA"

variable_info$real_name[grep("perma_pos_emotions", variable_info$real_name)] <-
  "Positive_emotions_PERMA"

variable_info$real_name[grep("perma_meaning", variable_info$real_name)] <-
  "Meaning_PERMA"

variable_info$real_name[grep("perma_accomplishment", variable_info$real_name)] <-
  "Accomplishment_PERMA"

variable_info$real_name[grep("perma_engagement", variable_info$real_name)] <-
  "Engagement_PERMA"

variable_info$real_name[grep("fulfillment", variable_info$real_name)] <-
  "Professional_Fulfillment_PFI"

variable_info$real_name[grep("efficacy", variable_info$real_name)] <-
  "Self_efficacy_GSE"

variable_info$real_name[grep("resilience", variable_info$real_name)] <-
  "Resilience_CDRISC"

variable_info$real_name[grep("gratitude_total", variable_info$real_name)] <-
  "Gratitude_GQ"

variable_info$real_name[grep("perma_health", variable_info$real_name)] <-
  "Health_PERMA"

variable_info$real_name[grep("gfma_total", variable_info$real_name)] <-
  "Fixed mindset_GFMA"

variable_info$real_name[grep("pfi_disengagement", variable_info$real_name)] <-
  "Disengagement_PFI"

variable_info$real_name[grep("burnout_total", variable_info$real_name)] <-
  "Burnout_total_OLBI"

variable_info$real_name[grep("burnout_disengagement", variable_info$real_name)] <-
  "Disengagement_OLBI"

variable_info$real_name[grep("pfi_emotexhaust", variable_info$real_name)] <-
  "Work_Exhaustion_PFI"

variable_info$real_name[grep("perma_neg_emotion", variable_info$real_name)] <-
  "Negative_emotions_PERMA"

variable_info$real_name[grep("pss_total", variable_info$real_name)] <-
  "Stress_PSS"

variable_info$real_name[grep("dom1", variable_info$real_name)] <-
  "Physical_Health_WHOQOL"

variable_info$real_name[grep("dom2", variable_info$real_name)] <-
  "Psychological health_ WHOQOL"

variable_info$real_name[grep("dom3", variable_info$real_name)] <-
  "Social_Relations_WHOQOL"

variable_info$real_name[grep("dom4", variable_info$real_name)] <-
  "Environmental_health_WHOQOL"

variable_info$real_name[grep("burnout_exhaustion", variable_info$real_name)] <-
  "Exhaustion_OLBI"

survey_data <-
  massdataset::create_mass_dataset(
    expression_data = expression_data,
    sample_info = sample_info,
    variable_info = variable_info
  )



save(survey_data, file = "survey_data")
save(expression_data, file = "expression_data")
save(sample_info, file = "sample_info")
save(variable_info, file = "variable_info")

write.csv(sample_info, file = "sample_info.csv", row.names = FALSE)
write.csv(t(expression_data), file = "survey_data.csv", row.names = FALSE)
