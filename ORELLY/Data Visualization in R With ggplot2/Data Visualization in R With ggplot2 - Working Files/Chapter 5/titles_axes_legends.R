## Customizing titles, axis labels, and legends

library("ggplot2")
library("gapminder")
library("dplyr")

## Subset data for 2007
gap_07 <- filter(gapminder, year == 2007)

## Scatter plot of GDP and life expectancy colored by continent with log
## transformed x axis
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10()

## Use theme_light
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light()

## Move legend position to bottom
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = "bottom")

## Remove legend
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = "none")

## Move legend inside plot area
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = c(0.1, 0.85))

## Save plot as a 7x7 PNG file
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = c(0.1, 0.85)) +
  ggsave("life_exp_gdp_2007_custom.png", width = 7, height = 7)

## Remove backgound of legend keys
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = c(0.1, 0.85),
        legend.key = element_blank()) +
  ggsave("life_exp_gdp_2007_custom.png", width = 7, height = 7)

## Increase axis text and axis title sizes
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = c(0.1, 0.85),
        legend.key = element_blank(),
        axis.text = element_text(size = 12),
        axis.title = element_text(size = 14)) +
  ggsave("life_exp_gdp_2007_custom.png", width = 7, height = 7)

## Add tidier x and y axis labels and a title, and capitalize legend title
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = c(0.1, 0.85),
        legend.key = element_blank(),
        axis.text = element_text(size = 12),
        axis.title = element_text(size = 14)) +
  labs(x = "Per capita GDP", 
       y = "Life Expectancy", 
       title = "2007 Life Expectancy and GDP",
       color = "Continent") +
  ggsave("life_exp_gdp_2007_custom.png", width = 7, height = 7)
