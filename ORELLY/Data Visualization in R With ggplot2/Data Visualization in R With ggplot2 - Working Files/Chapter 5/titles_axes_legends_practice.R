## Practice exercises: Customizing titles, axis labels, and legends

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Explore the theme elements available for customization at
## http://docs.ggplot2.org/current/theme.html




## 2) Create a density plot of 2007 life expectancy (excluding Oceania) colored
## by continent using the Color Brewer palette "Dark2". Reduce the opacity of
## the density segments. Add complete axis labels, capitalize the legend title,
## and add a title to the plot. Move the legend inside the plot area and remove
## the plot background and axis ticks.

gap_07 <- filter(gapminder, year == 2007, continent != "Oceania")
ggplot(gap_07, aes(x = lifeExp, fill = continent, color = continent)) +
  geom_density(alpha = 0.5) +
  labs(title = "Life Expectancy in 2007",
       x = "Life Expectancy",
       y = "Density",
       fill = "Continent",
       color = "Continent") +
  theme(legend.position = c(0.1, 0.8),
        panel.background = element_blank(),
        axis.ticks = element_blank())

## 3) Using only the data from Asia, create a series of line charts of life
## expectancy over time, facetted by country. Using the `angle` argument to
## `element_text()`, rotate the x axis tick labels 90 degrees. 

gap_asia <- filter(gapminder, continent == "Asia")
ggplot(gap_asia, aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_wrap(~ country) +
  theme(axis.text.x = element_text(angle = 90),
        axis.ticks = element_blank())