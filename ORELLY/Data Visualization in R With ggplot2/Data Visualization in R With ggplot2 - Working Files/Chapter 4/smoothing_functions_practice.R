## Practice exercises: smoothing functions

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Plot population over time for the Americas as a scatter plot and add a
## linear smoother

gapminder %>%
  filter(continent == "Americas") %>%
  ggplot(aes(x = year, y = pop)) + 
  geom_point(aes(color = country)) +
  geom_smooth()
 

## 2) Create scatter plots of life expectancy and GDP in the gapminder data
## facetted by year with points colored by continent. Add a smoother to each
## plot.

ggplot(gapminder, aes(x = lifeExp, y = gdpPercap)) +
  geom_point(aes(color = continent)) +
  facet_wrap( ~ year) + 
  geom_smooth()



ggplot(filter(gapminder, country == "Kuwait"), aes(x = year, y = gdpPercap)) +
  geom_line() +
  scale_y_continuous(limits = c(0, 125000))