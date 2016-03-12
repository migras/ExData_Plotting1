plot2 <- function() {
alldata = read.table("household_power_consumption.txt", header=TRUE, colClasses = c("character","character","numeric","numeric", "numeric", "numeric","numeric", "numeric", "numeric"), sep=";", na.strings="?")

mydata<-subset(alldata, Date=="2/2/2007" | Date=="1/2/2007")
plot(mydata$Global_active_power, type="l", lwd=2, ylab="", xaxt="n")
axis(1, labels=c("Thu","Fri","Sat"), at=c(1,0.5*length(mydata$Global_active_power),length(mydata$Global_active_power)))
title(ylab="Global Active Power (kilowatts)")

dev.copy(png,'plot2.png')
dev.off()
}