## Practice exercises: color scales

library("ggplot2")
library("gapminder")
library("dplyr")

## 1) Create a line chart of median population over time by continent. Color the
## lines by continent using the Color Brewer palette called "Set2" and set the
## line size to 1.5.

gap_pop <- gapminder %>%
  group_by(continent, year) %>%
  summarize(pop = median(pop))

ggplot(gap_pop, aes(x = year, y = pop, group = continent, color = continent)) +
  geom_line(size = 1.5) +
  scale_color_brewer(palette = "Set2")

## 2) For certain geoms like bars, there are two color-related aesthetics that
## data can be mapped to: `color` and `fill`. Create a bar chart of median
## population by continent for the year 1952 and experiment with mapping
## continent to the `color` and `fill` aesthetics with the "Set2" Color Brewer
## palette.

gap_pop_52 <- filter(gap_pop, year == 1952)

ggplot(gap_pop_52, aes(x = continent, y = pop, color = continent)) +
  geom_bar(stat = "identity") +
  scale_color_brewer(palette = "Set2")

ggplot(gap_pop_52, aes(x = continent, y = pop, fill = continent)) +
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Set2")

