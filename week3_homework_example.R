source('functions/livestreamSetup.R')

livestreamSetup(password = 'vulcans',user = 'rdavis',port = 4040)

library(tidyverse)
#Homework this week will be playing with the surveys data we 
#worked on in class. First things first, open your r-davis-in-class-project and pull. 
#Then create a new script in your scripts folder called week_3_homework.R.
#Load your survey data frame with the read.csv() function. 

surveys <- read.csv('data/portal_data_joined.csv')

#Create a new data frame called surveys_base with only the species_id, the weight, 
#and the plot_type columns. 

surveys_base <- select(surveys,species_id,weight,plot_type)
surveys_base <- surveys[c('species_id','weight','plot_type')]
surveys_base <- surveys %>% select(species_id, weight,plot_type)

#Have this data frame only be the first 60 rows. 

surveys_base <- head(x = surveys_base,60)
surveys_base <- surveys_base[1:60,]
str(surveys_base)

surveys_base <- surveys[c(1:60),c(6,9,13)]
surveys_base %>% str()
surveys_base <- head(surveys[c(6,9,13)],n = 60)
str(surveys_base)
#Convert both species_id and plot_type to factors. 

surveys_base$species_id <- as.factor(surveys_base$species_id)

class(surveys_base$species_id)

#Explore these variables and try to explain why a factor is different from a character. 
#Remove all rows where there is an NA in the weight column.

surveys_base_nonas <- na.omit(surveys_base)
str(surveys_base_nonas)
surveys_base_nonas <- na.omit(surveys_base$weight)
str(surveys_base_nonas)
surveys_base$weight

is.na(surveys_base$weight)
!is.na(surveys_base$weight)

surveys_base %>% na.omit(surveys_base$weight)
na.omit(surveys_base,surveys_base$weight)

surveys_base[is.na(surveys_base$weight),]
surveys_base[!is.na(surveys_base$weight),]
surveys_base[complete.cases(surveys_base),]
complete.cases(surveys_base)

surveys[1,]

surveys_base[c(T,F,T,F),]
#CHALLENGE: Create a second data frame called challenge_base that only 
#consists of individuals from your surveys_base data frame
#with weights greater than 150g.


challenge_base <- surveys_base[which(surveys_base$weight>150),]
summary(challenge_base$weight)

surveys_base$weight > 150
which(surveys_base$weight>150)

surveys_base[surveys_base$weight>150,]

livecode::stop_all()
