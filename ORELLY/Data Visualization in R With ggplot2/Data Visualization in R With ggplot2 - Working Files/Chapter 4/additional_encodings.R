## Additional visual encodings

library("ggplot2")
library("dplyr")
library("gapminder")

## Subset data for 2007
gap_07 <- filter(gapminder, year == 2007)

## Color points by continent
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp,
                   color = continent)) +
  geom_point()

## Use shapes to represent continent
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp,
                   shape = continent)) +
  geom_point()

## Use both shape and color to represent continent
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp,
                   shape = continent, color = continent)) +
  geom_point()

## Use color to represent continent and size to represent population
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp,
                   size = pop, color = continent)) +
  geom_point()

## Summarize data to find average population by continent and year
gap_pop <- gapminder %>% 
  group_by(continent, year) %>% 
  summarize(pop = mean(pop))

## View first few lines of data
head(gap_pop)

## Line chart of population by continent
ggplot(gap_pop, aes(x = year, y = pop, group = continent)) +
  geom_line()

## Line chart of population with lines colored by continent
ggplot(gap_pop, aes(x = year, y = pop, color = continent)) +
  geom_line()










































