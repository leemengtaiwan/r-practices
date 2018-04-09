## Practice exercises: viewing distributions

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Create a histogram of population using the 2007 data.

gap_07 <- filter(gapminder, year == 2007)

ggplot(gap_07, aes(x = pop)) +
  geom_histogram()

## 2) Explore the population distributions for the continents Europe and Africa
## in 2007 using density plots.

gap_07_eur <- filter(gap_07, continent == "Europe")

ggplot(gap_07_eur, aes(x = pop)) +
  geom_density()

gap_07_afr <- filter(gap_07, continent == "Africa")

ggplot(gap_07_afr, aes(x = pop)) +
  geom_density()

## 3) Create a series of box plots of life expectancy by year for the entire
## gapminder dataset. Hint: you'll need to use the "group" aesthetic to group
## the data by year.

ggplot(gapminder, aes(x = year, y = lifeExp, group = year)) +
  geom_boxplot()
