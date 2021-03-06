library(dslabs)
library(dplyr)
library(tidyverse)
data(gapminder)

p <- gapminder %>% filter(year %in% c("1960","2010")) %>% 
  ggplot(aes(fertility,life_expectancy,color=continent)) +
  geom_point() +
  facet_grid(.~year) +
  xlab("Fertility (childs per family)") +
  ylab("Life Expectancy (years)") +
  ggtitle("Evolution between Fertility and Life Expectancy in the World") +
  labs(colour="Continents")
p
