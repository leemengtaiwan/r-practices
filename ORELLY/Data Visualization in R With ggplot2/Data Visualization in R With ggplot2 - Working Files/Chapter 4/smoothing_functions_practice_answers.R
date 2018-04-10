## Practice exercises: smoothing functions

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Plot population over time for the Americas as a scatter plot and add a
## linear smoother

gap_am <- filter(gapminder, continent == "Americas")

ggplot(gap_am, aes(x = year, y = pop)) +
  geom_point() +
  geom_smooth(method = "lm")

## 2) Create scatter plots of life expectancy and GDP in the gapminder data
## facetted by year with points colored by continent. Add a smoother to each
## plot.

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color = continent)) +
  facet_wrap(~ year) +
  geom_smooth()


