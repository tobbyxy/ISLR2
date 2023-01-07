library(ISLR2)
library(tidyverse)

#Ex 8

#mpg as response, horsepower as predictor

auto_df <- Auto
auto_lm <- lm(mpg ~ horsepower, data=auto_df)
summary(auto_lm)



auto_df %>% 
  ggplot(., aes(x=horsepower, y=mpg)) +
  geom_point()

#there is a negative relationship between mile per gallon and horsepower. This is reasonable because the
#more the horsepower, the more the consumption of gas.
auto_df %>%
  ggplot(., aes(x = weight, y = mpg)) +
  geom_point(aes(color = factor(cylinders))) +
  scale_colour_discrete(name = 'No of cylinders') +
  labs(
    title = 'Miles per gallon vs engine displacement',
    subtitle = 'Breakdown by number of cylinders',
    x = 'Engine displacement in cubic inches',
    y = 'Miles per gallon',
    caption = 'Source: Auto dataset, own study'
  ) +
  scale_x_continuous(labels = scales::number) +
  scale_y_continuous(labels = scales::number) +
  theme_bw()
