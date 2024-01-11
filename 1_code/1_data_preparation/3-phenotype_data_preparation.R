no_source()
rm(list = ls())
library(tidyverse)
setwd(masstools::get_project_wd())
source("1_code/tools.R")

phenotype_data <-
  readr::read_csv(
    "2_data/6_Demographics/66491TheLastingChang-Demographics_DATA_2023-10-30_1848.csv"
  )

dir.create("3_data_analysis/1_data_preparation/phenotype_info",
           recursive = TRUE)
setwd("3_data_analysis/1_data_preparation/phenotype_info")

###sex

phenotype_data <-
  phenotype_data %>%
  dplyr::rename(subject_id = "record_id") %>%
  dplyr::mutate(demographics_sex = case_when(demographics_sex == 1 ~ "Male",
                                             demographics_sex == 2 ~ "Female"))

###race
race_choices <-
  c(
    "Caucasian",
    "African-American",
    "Latino or Hispanic",
    "Asian",
    "Native American",
    "Native Hawaiian or Pacific Islander",
    "Mixed",
    "Unknown"
  )

phenotype_data$demographics_race <-
  stringr::str_split(as.character(phenotype_data$demographics_race), pattern = "") %>%
  purrr::map(function(x) {
    x <-
      as.numeric(x)
    if (length(x) > 1) {
      return("Mixed")
    } else{
      return(race_choices[x])
    }
  }) %>%
  unlist()

##education
education_choices <-
  c(
    "Same High School",
    "High School",
    "Bachelor",
    "Master",
    "Ph.D. or higher",
    "Trade School",
    "Prefer not to say"
  )

phenotype_data$demographics_education <-
  education_choices[phenotype_data$demographics_education]

###living status

living_status_choices <-
  c("Homeowner",
    "Renter",
    "Lessee",
    "Other",
    "Prefer not to say")

phenotype_data$demographics_living <-
  living_status_choices[phenotype_data$demographics_living]

###marital status

marital_status_choices <-
  c(
    "Single",
    "Married",
    "In relationship",
    "Separated",
    "Divorced",
    "Widowed",
    "Other",
    "Prefer not to say"
  )

phenotype_data$marital_status_choices <-
  marital_status_choices[phenotype_data$demographics_status]

######check this, employment

employment_choices <-
  c(
    "Employed Full-Time",
    "Employed Part-Time",
    "Business Owner Full-Time",
    "Business Owner Part-Time",
    "Seeking opportunities",
    "Retired",
    "Unemployed",
    "Prefer not to say"
  )

phenotype_data$demographics_employment <-
  stringr::str_split(phenotype_data$demographics_employment, "") %>%
  purrr::map(function(x) {
    employment_choices[as.numeric(x[1])]
  }) %>%
  unlist()

##income
income_choicse <-
  c(
    "<25000",
    "25000-50000",
    "50000-100000",
    "100000-200000",
    ">200,000",
    "Prefer not to say"
  )

phenotype_data$demographics_income <-
  income_choicse[phenotype_data$demographics_income]

###religion No


###watch_method
###need to check
watch_method_choices <-
  c("Mobile phone",
    "Tablet",
    "Computer screen",
    "TV",
    "Other")

phenotype_data$demographics_watch <-
  watch_method_choices[phenotype_data$demographics_watch]


##watch participate
watch_participant_choices <-
  c("Alone",
    "Life partner",
    "Friend",
    "Family",
    "Group",
    "Other")

phenotype_data$demographics_participate <-
  watch_participant_choices[phenotype_data$demographics_participate]

phenotype_data$subject_id <- as.character(phenotype_data$subject_id)

class(phenotype_data$demographics_birth)

phenotype_data$age <-
  (lubridate::ymd("2023-01-01") - lubridate::ymd(phenotype_data$demographics_birth)) / 365

save(phenotype_data, file = "phenotype_data")
