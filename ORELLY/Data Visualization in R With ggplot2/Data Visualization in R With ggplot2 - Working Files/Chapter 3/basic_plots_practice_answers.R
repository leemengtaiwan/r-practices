## Practice exercises: basic plots

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Create a scatter plot of life expectancy over time for Asia

gap_asia <- filter(gapminder, continent == "Asia")

ggplot(gap_asia, aes(x = year, y = lifeExp)) +
  geom_point()

## 2) Create a line chart of GDP over time for Hungary

gap_hungary <- filter(gapminder, country == "Hungary")

ggplot(gap_hungary, aes(x = year, y = gdpPercap)) +
  geom_line()

## 3) Create a bar chart showing population of countries in Oceania in 1967

gap_oceania <- filter(gapminder, continent == "Oceania" & year == 1967)

ggplot(gap_oceania, aes(x = country, y = pop)) +
  geom_bar(stat = "identity")
