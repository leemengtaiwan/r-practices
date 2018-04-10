## Color scales

library("ggplot2")
library("gapminder")
library("dplyr")
install.packages("wesanderson")
library("wesanderson")
## Source: https://github.com/karthik/wesanderson


## Subset data for 2007
gap_07 <- filter(gapminder, year == 2007)

## Scatter plot colored by continent
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10()

## Scatter plot colored by continent using scale_color_brewer
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  scale_color_brewer(palette = "Dark2")

## Scatter plot colored by continent using a manual scale
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  scale_color_manual(values = c("#FF0000", "#00A08A", "#F2AD00",
                                "#F98400", "#5BBCD6"))

## Scatter plot colored by continent using a manual scale with the wes_palette
## function
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  scale_color_manual(values = wes_palette("Darjeeling")))

## Setting point color (and size), rather than mapping it
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(color = "darkblue", size = 3) +
  scale_x_log10()
