## Small multiples

library("ggplot2")
library("dplyr")
library("gapminder")

## Scatter plots of GDP vs. life expectancy facetted by continent and year
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  facet_grid(continent ~ year)

## Yearly life expectancy by continent
gap_life <- gapminder %>% 
  group_by(continent, year) %>% 
  summarize(lifeExp = mean(lifeExp))

## Single column, multiple rows
ggplot(gap_life, aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_grid(continent ~ .)

## Single row, multiple columns
ggplot(gap_life, aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_grid(. ~ continent)

## Wrapped
ggplot(gap_life, aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_wrap( ~ continent)
