source('functions/livestreamSetup.R')

livestreamSetup(password = 'vulcans',user = 'rdavis',port = 4040)


surveys <- read.csv('data/portal_data_joined.csv')
#1. keep only observations before 1995
surveys_base <- filter(surveys,year < 1995)

#2. keep year, sex, weight
surveys_base <- select(surveys_base,year,sex,weight)
str(surveys_base)

surveys_base <- filter(surveys,year<1995) %>% select(year,sex,weight)
surveys_base <- surveys %>% filter(year<1995) %>% select(year,sex,weight)
surveys_base <- filter(select(surveys,year,sex,weight),year<1995)


#Create a new data frame from the surveys data that meets the following criteria:
#1. contains only the species_id column 
#2. and a new column called hindfoot_half containing values that are half the hindfoot_length values. 
#3. In this hindfoot_half column, there are no NAs and all values are less than 30. 
#Name this data frame surveys_hindfoot_half.
surveys$hindfoot_length

surveys_hindfoot_half <- surveys %>% 
  filter(.,!is.na(hindfoot_length)) %>% 
  mutate(.,hindfoot_half = hindfoot_length/2) %>% 
  select(.,species_id,hindfoot_half) %>%
  filter(.,hindfoot_half < 30) 

str(surveys_hindfoot_half)


#Use group_by() and summarize() to find the mean, min, and max hindfoot length 
#for each species (using species_id).

surveys_hindfoot_half %>% group_by(species_id) %>%
  mutate(hindfoot_length = hindfoot_half * 2) %>%
  summarize(avg_length = mean(hindfoot_length),min(hindfoot_length),max(hindfoot_length)) %>%
  head()


