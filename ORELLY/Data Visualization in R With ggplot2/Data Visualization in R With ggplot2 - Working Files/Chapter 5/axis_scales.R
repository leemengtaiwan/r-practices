## Basic plots

library("ggplot2")
library("gapminder")
library("dplyr")

## Subset data for 2007
gap_07 <- filter(gapminder, year == 2007)

## Standard scatter plot of GDP and life expectancy
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

## Scatter plot with log transformed x axis
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  scale_x_continuous(trans = "log10")

## Learn more about options for transforming scales by reading the help file:
?scale_continuous

## Alternate way of log transforming the x axis
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  scale_x_log10()

## Set y axis limits
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  scale_x_log10() +
  scale_y_continuous(limits = c(0, 95))











