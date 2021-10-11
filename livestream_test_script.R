source('functions/livestreamSetup.R')

livestreamSetup(password = 'vulcans',user = 'rdavis',port = 4040)


livecode::stop_all()


number_vector[c(2,2)]
number_vector[c(3,2,1)]

number_vector = c(23, 32, 45)
number_vector = c(number_vector,54)
number_vector
#### here is where I did the thing
a<-1
a<-2

number_vector[1]

?data.frame()


(my_string <- c('dog','walrus','salmon'))

data.frame(c(my_string,my_string))

data.frame(first_column = my_string,second_column = c(my_string,'23'))


?str()
class(my_string)
?list()
FALSE
TRUE




(test_list <- list('first string entry into list'))
test_list[[1]][2] <- 'add next thing'
test_list
test_df <- data.frame(letters,letters)
str(test_df)
head(test_df)
test_list[[3]] <- test_df
str(test_list)

viewer <- getOption("viewer")
viewer('../R-DAVIS/docs/lesson_06_data_manipulation_pt1.html')

