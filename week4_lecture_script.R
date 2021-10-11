library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")
str(surveys)


summary(surveys$hindfoot_length)

?ifelse()

mean(surveys$hindfoot_length,na.rm = T)
ifelse(surveys$hindfoot_length<mean(surveys$hindfoot_length,na.rm = T),'small','big')

surveys <- mutate(surveys,hindfoot_size = ifelse(surveys$hindfoot_length<mean(surveys$hindfoot_length,na.rm = T),'small','big'))

surveys$hindfoot_size


tail <- read_csv('data/tail_length.csv')
str(tail)
summary(tail$record_id)
summary(surveys$record_id)


surveys_joined <- left_join(surveys,tail,by = "record_id")
str(surveys_joined)

surveys_mz <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(genus, plot_id) %>% 
  summarize(mean_weight = mean(weight))
surveys_mz
unique(surveys_mz$genus)
n_distinct(surveys_mz$genus)

wide_survey <- pivot_wider(surveys_mz,names_from = 'plot_id',values_from = 'mean_weight')

dim(wide_survey)
str(wide_survey)

pivot_longer(wide_survey,-genus,names_to = 'plot_id',values_to = 'mean_weight') %>% head()

