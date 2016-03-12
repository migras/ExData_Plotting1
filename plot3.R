plot3 <- function() {
alldata = read.table("household_power_consumption.txt", header=TRUE, colClasses = c("character","character","numeric","numeric", "numeric", "numeric","numeric", "numeric", "numeric"), sep=";", na.strings="?")

mydata<-subset(alldata, Date=="2/2/2007" | Date=="1/2/2007")
plot(mydata$Sub_metering_1, type="l", lwd=1, ylab="", xlab="", xaxt="n")
lines(mydata$Sub_metering_2, type="l", lwd=1, ylab="", xlab="", xaxt="n", col="red")
lines(mydata$Sub_metering_3, type="l", lwd=1, ylab="",xlab="", xaxt="n", col="blue")
axis(1, labels=c("Thu","Fri","Sat"), at=c(1,0.5*length(mydata$Global_active_power),length(mydata$Global_active_power)))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1,1))
title(ylab="Energy Sub Metering")

dev.copy(png,'plot3.png')
dev.off()
}