## Practice exercises: color scales

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Create a line chart of median population over time by continent. Color the
## lines by continent using the Color Brewer palette called "Set2" and set the
## line size to 1.5.

gapminder %>%
  group_by(continent, year) %>%
  summarize(popMed = median(pop)) %>%
  ggplot(aes(x = year, y = popMed, color = continent)) +
  geom_line(size = 1.5) +
  scale_color_brewer(palette = "PRGn")


## 2) For certain geoms like bars, there are two color-related aesthetics that
## data can be mapped to: `color` and `fill`. Create a bar chart of median
## population by continent for the year 1952 and experiment with mapping
## continent to the `color` and `fill` aesthetics with the "Set2" Color Brewer
## palette.

gap_52 <- filter(gapminder, year == 1952) %>%
  group_by(continent) %>%
  summarize(popMed = median(pop))
gap_52

ggplot(gap_52, aes(x = continent, y = popMed, fill = continent)) +
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Set2")
  