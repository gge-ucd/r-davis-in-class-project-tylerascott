library(ngRok)
id <- ngRok::livestream_start('www.rdaviscode.com','nifflers','rdavis',8080)

library(lubridate)

dates <- c('2012-10-20','1932-11-10','1995-12-11','1993-10-1')

class(as.Date(dates))
as.Date

dates2 <- c('03-33-2020','11-10-1932','12-11-1995','10-1-1993')
as.Date(dates2)

?as.POSIXct

date_and_times <- c('03-33-2020 4:20:13','06-10-2022 6:30:12 GMT','12-11-1995 14:20:20','10-1-1993 18:10:10')

as.POSIXlt(date_and_times,format = '%m-%d-%Y %H:%M:%S')

as.Date(dates2,'%m-%d-%Y')
dates
ymd(dates)
dates3 <- c('20121020','19321110','19951211','1993101')
ymd(dates3)


dates2
mdy(dates2)
?year
day(mdy(dates2))


lubridate::
ymd()
dmy()
mdy()
ymd_




ngRok::livestream_stop(id)

