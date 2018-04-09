## Practice exercises: tidy data and data manipulation

library("gapminder")
library("dplyr")

## 1) Subset the gapminder data for the country Argentina

filter(gapminder, country == "Argentina")

## 2) Subset the gapminder data where year is greater than 2000 and population
## is greater than 1 billion

filter(gapminder, year > 2000 & pop > 1000000000)

## 3) Find the median Gross Domestic Product (gdpPercap) by year for the Americas

gapminder %>%
  filter(continent == "Americas") %>%
  group_by(year) %>%
  summarize(medgpd = median(gdpPercap))

