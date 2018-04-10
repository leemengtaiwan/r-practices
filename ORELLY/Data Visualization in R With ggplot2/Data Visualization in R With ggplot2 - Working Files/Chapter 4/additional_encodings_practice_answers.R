## Practice exercises: additional visual encodings

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Choose two countries and plot their GDP over time with lines colored by country.

gap_ac <- filter(gapminder, country %in% c("Argentina", "Chile"))

ggplot(gap_ac, aes(x = year, y = gdpPercap, color = country)) +
  geom_line()

## 2) Using only the data for Europe, create a scatter plot of 2007 population
## vs. life expectancy with points sized by GDP.

gap_07_eur <- filter(gapminder, year == 2007 & continent == "Europe")

ggplot(gap_07_eur, aes(x = pop, y = lifeExp, size = gdpPercap)) +
  geom_point()

## 3) Create a density plot of life expectancy by continent (excluding Oceania)
## using the gapminder data from 2007. Color the density plot by continent, and
## experiment with both the `color` and `fill` aesthetics.

gap_07_oc <- filter(gapminder, year == 2007 & continent != "Oceania")

## `color` colors the outline of the density plot
ggplot(gap_07_oc, aes(x = lifeExp, color = continent)) +
  geom_density()

## `fill` fills in the density plot segments
ggplot(gap_07_oc, aes(x = lifeExp, fill = continent)) +
  geom_density(alpha = 0.5)

## `color` and `fill` can be used together
ggplot(gap_07_oc, aes(x = lifeExp, color = continent, fill = continent)) +
  geom_density(alpha = 0.5)

