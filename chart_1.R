library(ggplot2)
library(tidyverse)
library(dplyr)

sleep_data <- read.csv("sleep75.csv")

average_sleep_age <- sleep_data %>% 
  group_by(age) %>% 
  summarize(avg_sleep = mean(sleep))



chart_1 <- ggplot(average_sleep_age, aes(x = age, y =  (avg_sleep/60)/7)) + 
  geom_line(color = "red") + 
  labs(title = "Correlation Between Age and Average Hours Slept Per Day",
       x = "Age",
       y = "Average Hours Slept Per Day")
