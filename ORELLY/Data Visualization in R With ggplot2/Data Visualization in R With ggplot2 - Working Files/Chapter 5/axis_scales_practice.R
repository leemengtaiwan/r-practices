## Practice exercises: axis scales

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Create a scatter plot of 2007 GDP (on the x axis) and population (on the y
## axis). Experiment with log transforming the x axis, the y axis, and both
## axes.

gap_07 <- filter(gapminder, year == 2007)
gg <- ggplot(gap_07, aes(x = gdpPercap, y = pop, color = continent)) +
  geom_point()
gg

## X trans
gg + scale_x_continuous(trans = "log10")

## Y trans
gg + scale_y_continuous(trans = "log10")

## X + Y trans
gg + scale_x_log10() + scale_y_log10() + scale_color_brewer(palette = "4-class Paired")


## 2) Create a line chart of population of India and Australia over time.
## Experiment with log transforming the y axis.

gap <- filter(gapminder, country %in% c("India", "Australia"))
ggplot(gap, aes(x = year, y = pop)) +
  geom_line(aes(color = country)) +
  scale_y_continuous(trans = "log10")


## 3) Create a scatter plot of life expectancy vs GDP facetted by year, with
## points colored by continent and using a log transformed x axis scale.

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  facet_wrap( ~ year) +
  scale_x_continuous(trans = "log10")