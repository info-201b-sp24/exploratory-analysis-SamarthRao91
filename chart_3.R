library(ggplot2)
library(tidyverse)
library(dplyr)

sleep_data <- read.csv("sleep75.csv")



average_sleep_expr <- sleep_data %>% 
  group_by(exper) %>% 
  summarize(avg_totwrk = mean(totwrk), na.rm = TRUE)


chart_3 <- ggplot(average_sleep_expr, aes(x = exper, y =   avg_totwrk/60/5)) + 
  geom_line(color = "blue") + 
  labs(title = "Correlation between Exeperience and Hours Worked Per Day",
       x = "Experiece",
       y = "Hours Worked Per Day" )
