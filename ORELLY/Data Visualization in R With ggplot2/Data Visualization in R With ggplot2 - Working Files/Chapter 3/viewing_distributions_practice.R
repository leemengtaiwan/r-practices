## Practice exercises: viewing distributions

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Create a histogram of population using the 2007 data

gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = pop)) + geom_histogram(bin = 50)

## 2) Explore the population distributions for the continents Europe and Africa
## in 2007 using density plots.

gapminder %>%
  filter(year == 2007 & continent %in% c("Europe", "Africa")) %>%
  ggplot(aes(x = pop, color = continent)) + geom_density()

## 3) Create a series of box plots of life expectancy by year for the entire
## gapminder dataset. Hint: you'll need to use the "group" aesthetic to group
## the data by year.
ggplot(gapminder, aes(x = year, y = lifeExp, group = year)) +
  geom_boxplot()

