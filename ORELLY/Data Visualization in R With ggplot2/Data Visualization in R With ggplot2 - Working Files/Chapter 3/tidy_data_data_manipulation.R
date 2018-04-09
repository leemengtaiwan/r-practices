## Tidy data and data manipulation
library("dplyr")
library("gapminder")

## View first few lines of gapminder data
head(gapminder)

## Subset data for 2007
filter(gapminder, year == 2007)

## Subset data for 2007 and create an object called gap_07
gap_07 <- filter(gapminder, year == 2007)

## View the structure of the subsetted data
str(gap_07)

## Subset data where country is either France or Turkey
filter(gapminder, country %in% c("France", "Turkey"))

## Subset data for 2007 excluding Oceania
filter(gapminder, year == 2007 & continent != "Oceania")

## Subset data for 2007, then group by continent and summarize to find the
## median population by continent
gapminder %>%
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarize(medpop = median(pop))










