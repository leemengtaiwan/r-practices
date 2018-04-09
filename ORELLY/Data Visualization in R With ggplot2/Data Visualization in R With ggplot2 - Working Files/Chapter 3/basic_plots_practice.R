## Practice exercises: basic plots

library("ggplot2")
library("gapminder")
library("dplyr")

head(gapminder)

## 1) Create a scatter plot of life expectancy over time for Asia
gapminder %>%
  filter(continent == "Asia") %>%
  ggplot(aes(x = year, y = lifeExp)) + geom_point()

## 2) Create a line chart of GDP over time for Hungary
gapminder %>%
  filter(country == "Hungary") %>%
  ggplot(aes(x = year, y = gdpPercap)) + geom_line()

## 3) Create a bar chart showing population of countries in Oceania in 1967
gapminder %>%
  filter(continent == "Oceania" & year == 1967) %>%
  ggplot(aes(x = country, y = pop)) + geom_bar(stat = "identity")