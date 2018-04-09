## Viewing data distributions

library("ggplot2")
library("dplyr")
library("gapminder")

## Subset data for 2007
gap_07 <- filter(gapminder, year == 2007)

## Create histogram
ggplot(gap_07, aes(x = gdpPercap)) +
  geom_histogram()

## Create histogram with 15 bins
ggplot(gap_07, aes(x = gdpPercap)) +
  geom_histogram(bins = 15)

## Create histogram with bin width of 5000
ggplot(gap_07, aes(x = gdpPercap)) +
  geom_histogram(binwidth = 5000)

## Create density plot
ggplot(gap_07, aes(x = gdpPercap)) +
  geom_density()

## Create box plot
ggplot(gap_07, aes(x = continent, y = lifeExp)) +
  geom_boxplot()

## Create box plot overlaid with data points
ggplot(gap_07, aes(x = continent, y = lifeExp)) +
  geom_boxplot() +
  geom_jitter(width = 0.5, alpha = 0.2)












































