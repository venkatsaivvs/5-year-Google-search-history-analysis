
mydata<- read.csv("mydata.csv")

str(mydata)

typeof(mydata$time)


mydata$time<-as.POSIXct((mydata$timestamp_usec/1000000), origin="1970-01-01",tz="EST")
#mydata$onlydate<-as.POSIXct(mydata$time,format='%m/%d/%Y',format='%m/%d/%Y')
mydata$onlydate<-as.Date(mydata$time)

mydata$day<-weekdays(mydata$time)
mydata$month<-months(mydata$time)
mydata$date<-as.Date(mydata$time)
mydata$year<-as.numeric(format(mydata$time,'%Y'))

typeof(mydata$onlydate)
table(mydata$onlydate)
head(mydata$time)


barplot(table(mydata$year),col=rainbow(4),main = "VENKAT ALL TIMESEARCHES BY YEAR")

library(ggplot2)

ggplot(mydata, aes(factor(mydata$year)))+ geom_bar()
a<-qplot(factor(mydata$year), data=mydata, geom="bar", fill=factor(mydata$year),xlab = 'Year',ylab = 'Number of Searches',main = 'Searches by Year')

a+labs(fill="Year")

length(mydata$time)

length(mydata$day)

plot(table(mydata$onlydate))

temp<-as.data.frame(table(mydata$onlydate))

ggplot(temp,x=Day,y=count)
qplot(Day, Count, data=temp, geom="line")

str(temp)
summary(temp)

names(temp)<-c('Day','Count')
str(temp)

lineplot(temp$Day,temp$Count)

timeseries<-ts(temp,start = 2013,end = 2016)

plot(timeseries)


ggplot(temp,aes(Var1,Freq)) + geom_line()

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
