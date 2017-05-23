data<-read.csv.sql(file ="household_power_consumption.txt",sql= "select * from file where Date in ('1/2/2007','2/2/2007') ",sep =";")
librar(lubridate)
h<-paste(data$Date,data$Time)
g<-dmy_hms(h)
data<-mutate(data,datetime=g)

hist(data$Global_active_power,col ="red",xlab="Globalactivepower(killowatt)",main = "")
 dev.copy(png,file= "plot1.png")
dev.off()
