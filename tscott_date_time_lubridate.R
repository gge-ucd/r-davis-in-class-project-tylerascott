library(lubridate)


test_date <- as.Date('2020-01-01')
class(test_date)


sample_dates_1 <- c("2018-02-01", "2018-03-21", "2018-10-05", "2019-01-01", "2019-02-18")
#notice we have dates across two years here
as.Date(sample_dates_1)

# Some sample dates: 

sample_dates_2 <- c("02-01-2018", "03-21-2018", "10-05-2018", "01-01-2019", "02-18-2019")
as.Date(sample_dates_2)



# Some sample dates:
sample_dates_2 <- c("02-01-2018", "03-21-2018", "10-05-2018", "01-01-2019", "02-18-2019")

sample_dates_3<- as.Date(sample_dates_2, format = "%m-%d-%Y" ) # date code preceded by "%"
sample_dates_3

as.Date("2016/01/01", format="%Y/%m/%d")

as.Date("05A21A2011", format="%mA%dA%Y")


tm1 <- as.POSIXct("2016-07-24 23:55:26")
tm1

tm2 <- as.POSIXct("25072016 08:32:07", format = "%d%m%Y %H:%M:%S")
class(tm2)

tm3 <- as.POSIXct("2016-07-24 23:55:26",tz = 'GMT')
tm3

sample_dates_1 <- c("2018-02-01", "2018-03-21", "2018-10-05", "2019-01-01", "2019-02-18")

ymd()
dmy('23-02-2020')
mdy()
ydm()
sample_dates_lub <- ymd(sample_dates_1)
sample_dates_lub

day(sample_dates_lub)

sample_dates_2 <- c("2-01-2018", "3-21-2018", "10-05-18", "01-01-2019", "02-18-2019")
#notice that some numbers for years and months are missing

sample_dates_lub2 <- mdy(sample_dates_2) #lubridate can handle it! 
sample_dates_lub2


library(lubridate)
library(dplyr)
library(readr)
# read in some data and skip header lines
nfy1 <- read_csv("data/2015_NFY_solinst.csv", skip = 12)
getwd()
head(nfy1) #R tried to guess for you that the first column was a date and the second a time





