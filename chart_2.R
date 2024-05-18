library(ggplot2)
sleep_data <- read.csv("sleep75.csv");
chart_2_plt <- ggplot(sleep_data, aes(x = sleep, y = lhrwage)) + 
  geom_point(alpha = 0.7) + 
  labs(title = "Natural Logarithm of Hourly Wage vs Sleep",
       x = "Sleep in Minutes",
       y = "Natural Logarithmic Wage",
       color = "Health")
