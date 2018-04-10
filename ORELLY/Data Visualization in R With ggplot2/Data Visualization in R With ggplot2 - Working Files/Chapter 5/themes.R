## Themes

library("ggplot2")
library("gapminder")
library("dplyr")
install.packages("ggthemes")
library("ggthemes")

## Subset data for 2007
gap_07 <- filter(gapminder, year == 2007)

## Default ggplot2 theme
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_gray()

## Default ggplot2 theme with alternate spelling
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_grey()

## View other ggplot2 themes
?ggthemes

## Theme examples:

## Theme with white background and light gray grid lines
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_bw()

## Theme with dark background
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_dark()

## Theme with no non-data elements
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_void()

## Theme inspired by Edward Tufte
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_tufte()

## Theme with solarized color palette
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_solarized() +
  scale_colour_solarized("blue")

## Theme imitating base R plots
ggplot(gap_07, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_base()

## More information about the ggthemes package:
## https://github.com/jrnold/ggthemes
