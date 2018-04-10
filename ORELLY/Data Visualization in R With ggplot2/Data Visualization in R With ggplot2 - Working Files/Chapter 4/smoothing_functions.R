## Smoothing functions

library("ggplot2")
library("gapminder")
library("dplyr")

## Subset data for 2007
gap_07 <- filter(gapminder, year == 2007)

## Create scatter plot of GDP vs. life expectancy
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

## Add default smoother to scatter plot
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth()

## Make smoother more wiggly
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth(span = 0.2)

## Make smoother less wiggly
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth(span = 0.9)

## Remove confidence intervals
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth(se = FALSE)

## Use 90% confidence interval
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth(level = 0.90)

## Use a linear model instead of loess
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth(method = "lm")

## Begin building facetted plot with smoothers colored by continent. First
## create a plain scatter plot.
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

## Then facet by continent
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  facet_wrap(~ continent)

## Then add smoothers
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  facet_wrap(~ continent) +
  geom_smooth()

## Then color by continent -- this colors the points as well as the smoother
## lines
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  facet_wrap(~ continent) +
  geom_smooth()

## By placing an `aes()` call within `geom_smooth()`, we can map continent to
## color for the smoother, but not the points
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  facet_wrap(~ continent) +
  geom_smooth(aes(color = continent))















