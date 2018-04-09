## Basic plots

library("ggplot2")
library("gapminder")
library("dplyr")

## Subset data for 2007
gap_07 <- filter(gapminder, year == 2007)
head(gap_07)

## Create scatter plot of GDP vs. Life Expectancy
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

## Create bar chart of counts by continent
ggplot(gap_07, aes(x = continent)) +
  geom_bar()

## Calculate median population by continent
gap_07_med <- gap_07 %>%
  group_by(continent) %>%
  summarize(pop = median(pop))

head(gap_07_med)

## Create bar chart of median population values
ggplot(gap_07_med, aes(x = continent, y = pop)) +
  geom_bar(stat = "identity")

## Subset data for Iceland
gap_iceland <- filter(gapminder, country == "Iceland")

## Plot lines and points for GDP over time
p <- ggplot(gap_iceland, aes(x = year, y = gdpPercap))

p + geom_point()
p + geom_line()
p + geom_point() + geom_line()

## Save plots
p +
  geom_point() +
  geom_line() +
  ggsave("iceland_gdp.png", height = 6, width = 8)

p2 <- ggplot(gap_iceland, aes(x = year, y = gdpPercap)) +
  geom_point() +
  geom_line()

ggsave("iceland_gdp.png", plot = p2, height = 6, width = 8)






















