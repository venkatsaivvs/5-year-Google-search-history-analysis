
mydata<- read.csv("mydata.csv")

str(mydata)

typeof(mydata$time)


mydata$time<-as.POSIXct((mydata$timestamp_usec/1000000), origin="1970-01-01",tz="EST")

mydata$day<-weekdays(mydata$time)
mydata$month<-months(mydata$time)
mydata$date<-as.Date(mydata$time)
mydata$year<-as.numeric(format(x,'%Y'))

head(mydata$time)

barplot(table(mydata$year),col=rainbow(4),main = "VENKAT ALL TIMESEARCHES BY YEAR")





length(mydata$time)

length(mydata$day)

tapply(mydata$time)

head(mydata$time)

barplot(table(mydata$month),col=rainbow(12),main="VENKAT ALL TIME SEARCHES BY MONTH",names.arg=c("AP","AU","D","F","JAN","JL","JN","MR","MA","N","O","S"))

table(mydata$month)


barplot(table(mydata$day),col=rainbow(7),main="VENKAT ALL TIME SEARCHES BY WEEK",names.arg = c("FRI", "MON", "SAT","SUN","THU","TUE","WED"))

table(mydata$day)





?barplot

mydata$day

head(mydata$timestamp_usec)

head(mydata$time)

valuetest<-as.POSIXct((mydata$timestamp_usec/1000000), origin="1970-01-01")

valuetest
-------------------------------------
mydata  before job
----------------------------------------
mydatabefjob<- subset(mydata,year==2013 | year == 2014)
mydatabefjob$day<-weekdays(mydatabefjob$time)
table(mydatabefjob$year)

barplot(table(mydatabefjob$day),col=rainbow(7),main = "VENKAT ALL TIMESEARCHES BY week before job",names.arg = c("FRI", "MON", "SAT","SUN","THU","TUE","WED"))
str(mydatabefjob)

table(mydata$month)
barplot(table(mydatabefjob$month),col=rainbow(12),main="VENKAT ALL TIME SEARCHES BY MONTH",names.arg=c("AP","AU","D","F","JAN","JL","JN","MR","MA","N","O","S"))
-----------------------------------------------
  my data after job
------------------------------------------------
  mydataafterjob<-subset(mydata,year == 2015 | year ==2016)
barplot(table(mydataafterjob$day),col=rainbow(7),main = "VENKAT ALL TIMESEARCHES BY week after job",names.arg = c("FRI", "MON", "SAT","SUN","THU","TUE","WED"))
table(mydataafterjob$day)

table(mydataafterjob$year)

table(mydata$year)
barplot(table(mydataafterjob$month),col=rainbow(12),main="VENKAT ALL TIME SEARCHES BY MONTH",names.arg=c("AP","AU","D","F","JAN","JL","JN","MR","MA","N","O","S"))
