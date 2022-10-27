library(ngRok)

id <- ngRok::livestream_start(hostname = "www.rdaviscode.com",password = 'nifflers',user = 'rdavis',port = 8080)
ngRok::livestream_stop(id = id)

set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <- replace(hw2, c(4,12,22,27), NA)

#Take your hw2 vector
  #1. removed all the NAs
na.omit(hw2)
temp1 <- hw2[!is.na(hw2)]
temp2 <- temp1[temp1<=38&temp1>=14]
prob1 <- temp2
prob1
new_object <- hw2[complete.cases(hw2)]

  #2. then select all the numbers between 14 and 38 inclusive
hw2[hw2>=14&hw2<=38]

hw2[!is.na(hw2)&hw2>=14&hw2<=38]

  #3. call this vector prob1.
prob1 <- new_object[new_object>=14&new_object<=38]
prob1
#Multiply each number in the prob1 vector by 3 to create a new vector called times3. Then add 10 to each number in your times3 vector to create a new vector called plus10.

#Select every other number in your plus10 vector by selecting the first number, not the second, the third, not the fourth, etc. If you’ve worked through these three problems in order, you should now have a vector that is 12 numbers long that looks exactly like this one: