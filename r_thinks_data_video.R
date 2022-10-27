weight <- vector()

str(weight)
length(weight)
?vector

weight <- c(5,10,200,24)
length(weight)
str(weight)
class(weight)
is.numeric(weight)
tail(weight,n = 2)

weight <- c(weight, 39)

weight
weight[3,1,]
3:1
1:3
animals <- c('dog','rat','cat','armadillo')
animals

year <- 2022

year
length(year)
length(animals)
empty_vector <- vector()
class(weight)
class(animals)

str(animals)
str(weight)

weight <- c(weight,63)

TRUE-1
FALSE-1
TRUE

new_vector <- c(weight,animals)
class(new_vector)

c(weight, TRUE)


animals <- c("mouse","rat","dog","cat")
str(animals)


animals[c(1,2)]
animals[c(2,1)]
animals[c(2,2,2)]

animals[c(TRUE,FALSE,TRUE,FALSE)]
animals[c(TRUE,FALSE)]
animals[c(T,F,T,F)]

weight <- c(101,99,88,112,105)
str(weight)

weight[weight<=101]

weight < 99
weight > 110

weight[weight < 99 | weight > 110]

animals

animals=="mouse"
animals[animals=="mouse"]
animals[animals=="mouse"|animals=='rat']

test = 'test object'
test == 'something else'


# %in%
animals <- c("mouse","rat","dog","cat")

animals %in% c("rat", "cat", "dog", "duck", "goat")

#vector math and recycling
x <- 1:10

x + 3
x * 10

y <- 100:109
length(x)
length(y)
x + y
cbind(x,y,x+y)

z <- 1:2
str(z)
x + z
cbind(x,z,x+z)

z <- 1:3
str(z)
x + z
cbind(x,z,x+z)
a <- x + z

c(TRUE, FALSE)
x[c(TRUE, FALSE)]






NA

heights <- c(2, 4, 4, NA, 6)

mean(heights)
max(heights)

mean(heights,na.rm = T)
max(heights,na.rm = T)
min(heights,na.rm = T)

heights <- c(2, 4, 4, NA, 6)
is.na(heights) 
!is.na(heights)

heights[!is.na(heights)] 

heights[complete.cases(heights)]

complete.cases(heights)








#lists
my_list <- list(4,letters,'rat')
class(my_list)
str(my_list)
length(my_list)
length(my_list[[2]])

#data.frame
letters
my_df <- data.frame(letters)
length(my_df)
dim(my_df)
my_df2 <- data.frame(letters,letters,letters)
dim(my_df2)

my_df <- data.frame(letters,x = 1)

str(my_df)

#matrix 
my_matrix <- matrix(1:10,ncol = 10,nrow = 10)
my_matrix[c(1,2),c(1,2)]


#array
array[x,y,z]


sex <- factor(c("male", "female", "female", "male"))
class(sex)
typeof(sex)

levels(sex)
nlevels(sex)
str(sex)

sex # current order
sex <- factor(sex, levels = c("male", "female"))

sex # after re-ordering
as.character(sex)

year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
year_fct
as.numeric(year_fct)
as.character(year_fct)

as.numeric(as.character(year_fct)) - 1

levels(sex)[1] <- 'MALE'



levels(sex) <- c("MALE", "FEMALE")
levels(sex)


levels(sex)[1] <- "MALE"
levels(sex) <- c("MALE", "FEMALE")
sex