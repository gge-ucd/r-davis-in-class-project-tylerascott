# time series
# faceting
# themes

library(ngRok)
ngRok::livestream_start('www.rdaviscode.com','nifflers','rdavis',8080)

id <- "F53066D9"
ngRok::livestream_stop(id)

library(tidyverse)
surveys_complete <- read_csv("data/portal_data_joined.csv") %>% 
  filter(complete.cases(.))


yearly_counts <- surveys_complete %>%
  count(year, species_id) 

yearly_counts2 <- surveys_complete %>%
  count(year, species_id,sex) 
head(yearly_counts2)
head(yearly_counts)

g = ggplot(data = yearly_counts) 
g + geom_point(aes(x = year,y = n)) +
  geom_line(aes(x = year,y = n))
  geom_path(aes(x = year,y = n))

  geom_path(mapping = aes(x = year,y = n))
#grouped by species
ggplot(data = yearly_counts) +
  geom_path(mapping = aes(x = year,y = n,group = species_id))
# add color
ggplot(data = yearly_counts,mapping = aes(x = year,colour = species_id,
                                          y = n,group = species_id)) +
  geom_path() + geom_point()

# facetting
ggplot(data = yearly_counts) +
  geom_path(mapping = aes(x = year,y = n,group = species_id)) +
  facet_wrap(~species_id,scales = "free_y")

ggplot(data = yearly_counts) +
  geom_path(aes(x = year,y = n,colour = species_id)) +
  facet_wrap(~species_id,ncol = 3)

yearly_counts2 %>% 
  filter(species_id %in% c('BA','DM')) 
library(ggthemes)
  ggplot() +
  geom_path(aes(x = year,y = n,colour = species_id)) +
  facet_wrap(sex~species_id,nrow = 2) + theme_state()

library(ggthemes)
ggplot(data = yearly_counts,mapping = aes(x = year,colour = species_id,                                          y = n,group = species_id)) +
  geom_path() + geom_point() + theme_stata()




