## Practice exercises: additional visual encodings

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Choose two countries and plot their GDP over time with lines colored by country.

gapminder %>%
  filter(country %in% c("Taiwan", "Japan")) %>%
  ggplot(aes(x = year, y = gdpPercap, color = country)) +
  geom_line()


## 2) Using only the data for Europe, create a scatter plot of 2007 population
## vs. life expectancy with points sized by GDP.

gapminder %>%
  filter(continent == "Europe" & year == 2007) %>%
  ggplot(aes(x = pop, y = lifeExp, size = gdpPercap)) +
  geom_point()


## 3) Create a density plot of life expectancy by continent (excluding Oceania)
## using the gapminder data from 2007. Color the density plot by continent, and
## experiment with both the `color` and `fill` aesthetics.

gapminder %>%
  filter(year == 2007 & continent != "Oceania") %>%
  ggplot(aes(x = lifeExp)) +
  geom_density(aes(fill = continent, color = continent), alpha = 0.5) +
  scale_colour_brewer()