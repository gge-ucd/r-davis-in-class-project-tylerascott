source('functions/livestreamSetup.R')

livestreamSetup(password = 'vulcans',user = 'rdavis',port = 4040)

library(tidyverse)



library(ggplot2)
myplot = ggplot(diamonds, aes(x = clarity, fill = cut)) + 
  geom_bar() +
  theme(axis.text.x = element_text(angle=70, vjust=0.5)) +
  scale_fill_viridis_d(option = "C") +
  theme_classic()
library(BrailleR)
VI(myplot)
library(sonify)

test = ggplot(data = gapminder,aes(x = lifeExp,y=gdpPercap))   +
  geom_smooth(aes(group = continent))
sonify::sonify(test)
library(sonify)
plot(iris$Petal.Width,iris$Sepal.Length)

gapminder %>% filter(year %in% c(2002,2007,2012))

gapminder %>% filter(year == 2002|year==2007|year==2012)

gapminder %>% filter(year %in% c(2002))
gapminder %>% filter(year == 2002)
gapminder %>% filter(country %in% c('Afghanistan','Nepal'))

gapminder$country == c('Nepal','Afghanistan')

gapminder %>% select(country,year)


gapminder %>% filter(year %in% c(2002,2007)) %>% 
  pivot_wider(id_cols = country,names_from = year,values_from = pop) %>%
  mutate(popDiff = `2007`-`2002`) 

new_data = gapminder %>% filter(year %in% c(2002,2007)) %>% 
  pivot_wider(id_cols = c(country,continent),names_from = year,values_from = pop) %>%
  mutate(popDiff = `2007`-`2002`) %>%
  filter(continent!='Oceania') 

ggplot(new_data) + facet_wrap(~continent) + 
  geom_bar(aes(x = country,y = popDiff))

ggplot(new_data) + geom_bar(aes(x = continent))

ggplot(data =new_data) + facet_wrap(~continent,scales = 'free') + 
  geom_bar(aes(x = reorder(country,popDiff),y = popDiff),stat = 'identity') +
  labs(x = 'Country',y = 'change in pop. 2002 to 2007') +
  theme_bw() + 
  theme(axis.text.x = element_text(colour = 'red',angle = 45)) +
  coord_flip()



