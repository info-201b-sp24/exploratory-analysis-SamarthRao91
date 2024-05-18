library(knitr)
library(dplyr)
library(tidyverse)
sleep_data <- read.csv("sleep75.csv")

table <- sleep_data %>%
  group_by(age) %>%
  summarize(across(c(sleep, totwrk, exper), mean, na.rm = TRUE))
table <- table %>%
  mutate(
    sleep = sleep / 60 / 7,
    totwrk = totwrk / 60 / 5
  ) %>%
  rename(
    'Age' = age,
    'Sleep (hrs/day)' = sleep,
    'Hours Worked per Day (5 days/wk)' = totwrk,
    'Years of Experience' = exper
  )
table <- round(table, 2)
kable(table)