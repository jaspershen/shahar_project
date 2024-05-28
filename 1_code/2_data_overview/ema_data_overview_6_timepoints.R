no_source()
rm(list = ls())
library(tidyverse)

setwd(masstools::get_project_wd())
source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/ema_data_6_points/ema_data")

dir.create("3_data_analysis/2_data_overview/ema_data_6_timepoints",
           recursive = TRUE)
setwd("3_data_analysis/2_data_overview/ema_data_6_timepoints")

expression_data <-
  massdataset::extract_expression_data(ema_data)

sample_info <-
  massdataset::extract_sample_info(ema_data)

variable_info <-
  massdataset::extract_variable_info(ema_data)

