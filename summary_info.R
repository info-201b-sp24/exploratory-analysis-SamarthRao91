library(dplyr)
library(tidyverse)

sleep_data <- read.csv("sleep75.csv")

sleep_avg <- sleep_data %>%
  summarize(sleep_avg = round(mean(sleep, na.rm = TRUE) / 60 / 7, 2))

sleep_avg_65 <- sleep_data %>%
  filter(age == 65) %>%
  summarize(sleep_avg_65 = round(mean(sleep, na.rm = TRUE) / 60 / 7, 2))

sleep_avg_23 <- sleep_data %>%
  filter(age == 23) %>%
  summarize(sleep_avg_23 = round(mean(sleep, na.rm = TRUE) / 60 / 7, 2))

work_avg_30 <- sleep_data %>%
  filter(age == 30) %>%
  summarize(work_avg_30 = round(mean(totwrk, na.rm = TRUE) / 60 / 5, 2))

work_avg_62 <- sleep_data %>%
  filter(age == 62) %>%
  summarize(work_avg_62 = round(mean(totwrk, na.rm = TRUE) / 60 / 5, 2))

exp_avg_30 <- sleep_data %>%
  filter(age == 30) %>%
  summarize(work_avg_30 = round(mean(exper, na.rm = TRUE), 2))

exp_avg_62 <- sleep_data %>%
  filter(age == 62) %>%
  summarize(work_avg_62 = mean(exper, na.rm = TRUE))
