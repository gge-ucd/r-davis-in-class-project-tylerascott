library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")

head(surveys)
head(surveys$year==1977,1)
##ifelse
if(surveys$year==1977){print('year is 1977')} 
ifelse(test = surveys$year==1977,yes = print('year is 1977'),no = print('not 1977'))

if(surveys$year==1978){print('year is 1978')}else{'other year'}

ifelse(surveys$hindfoot_length < 29.29, "small", "big")
surveys$hindfoot_cat <- ifelse(surveys$hindfoot_length < 29.29, "small", "big")

#case_when

surveys %>% 
  mutate(hindfoot_cat = case_when(
    hindfoot_length > 29.29 ~ "big",
    TRUE ~ "small"
  )) %>% 
  select(hindfoot_length, hindfoot_cat) %>% 
  head()

surveys %>% 
  mutate(hindfoot_cat = case_when(
    hindfoot_length > 29.29 ~ "big",
    hindfoot_length < 10 ~ "really small",
    TRUE ~ "small"
  )) %>% 
  select(hindfoot_length, hindfoot_cat) %>%
head()

NA
surveys %>% 
  mutate(hindfoot_cat = case_when(
    is.na(hindfoot_length) ~ NA_character_,
    hindfoot_length > 29.29 ~ "big",
    TRUE ~ "small"
  )) %>% 
  select(hindfoot_length, hindfoot_cat) %>% 
  head()
