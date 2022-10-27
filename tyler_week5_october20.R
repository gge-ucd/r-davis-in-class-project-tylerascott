library(ngRok)
host <- 'www.rdaviscode.com'
psswd <- 'nifflers'
user <- 'rdavis'
id <- ngRok::livestream_start(hostname = host,password = psswd,user = user,port = 8080)

livestream_stop(id)


library(tidyverse)
surveys <- read_csv('data/portal_data_joined.csv')

#Subset surveys using Tidyverse methods to 
  #keep rows with weight between 30 and 60
  #and print out the first 6 rows.

surveys %>% filter(weight>30&weight<60) 

surveys %>% 
  group_by(species_id,sex) %>% 
  summarize(max(weight,na.rm = T))

surveys %>% 
  group_by(species_id,sex) %>% 
  filter(!is.na(weight)) %>%
  summarize(max(weight))

is.na(surveys)
rowSums(is.na(surveys))
colSums(is.na(surveys))/nrow(surveys)

biggest_critters <- surveys %>% group_by(species_id,sex)


table(ifelse(surveys$year==1980,'year is 1980!'))  
  
if(condition){do this thing}else{do this other thing}

if(condition){do this thing}
else if{do this other thing}
else if{do this other thing}
else{do this final thing}

ifelse(test1,'this',ifelse(test2,'this','that'))







  
  

