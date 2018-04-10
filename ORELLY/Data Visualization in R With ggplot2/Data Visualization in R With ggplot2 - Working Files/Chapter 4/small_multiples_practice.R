## Practice exercises: small multiples

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Using the full gapminder dataset create histograms, each with twenty bins,
## of life expectancy facetted by continent and year.

ggplot(gapminder, aes(x = lifeExp)) +
  geom_histogram(bins = 20) +
  facet_grid(continent ~ year)

## 2) Create a series of scatter plots of GDP vs life expectancy with points
## colored by continent. Facet these plots by year.

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  facet_wrap( ~ year)


## 3) Using only the data from Asia, create a series of line charts of life
## expectancy over time, facetted by country.

gapminder %>%
  filter(continent == "Asia") %>%
  ggplot(aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_wrap( ~ country)