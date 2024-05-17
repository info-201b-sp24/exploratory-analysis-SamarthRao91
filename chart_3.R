library(ggplot2)
library(tidyverse)
library(dplyr)

sleep_data <- read.csv("sleep75.csv")



average_sleep_expr <- sleep_data %>% 
  group_by(exper) %>% 
  summarize(avg_sleep = mean(sleep))


chart <- ggplot(average_sleep_expr, aes(x = exper, y =   (avg_sleep/60)/7)) + 
  geom_line(color = "blue") + 
  labs(title = "Correlation between Exeperience and Hours Worked Per Day",
       x = "Experiece",
       y = "Hours Worked Per Day" )