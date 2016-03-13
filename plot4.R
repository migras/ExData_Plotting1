plot4 <- function() {
alldata = read.table("household_power_consumption.txt", header=TRUE, colClasses = c("character","character","numeric","numeric", "numeric", "numeric","numeric", "numeric", "numeric"), sep=";", na.strings="?")

mydata<-subset(alldata, Date=="2/2/2007" | Date=="1/2/2007")

par(mfcol=c(2,2))
par(mar=c(4,4,2,2))
plot(mydata$Global_active_power, type="l", lwd=2, ylab="",xlab="", xaxt="n")
axis(1, labels=c("Thu","Fri","Sat"), at=c(1,0.5*length(mydata$Global_active_power),length(mydata$Global_active_power)))
title(ylab="Global Active Power (kilowatts)")
plot(mydata$Sub_metering_1, type="l", lwd=1, ylab="", xlab="", xaxt="n")
lines(mydata$Sub_metering_2, type="l", lwd=1, ylab="", xlab="", xaxt="n", col="red")
lines(mydata$Sub_metering_3, type="l", lwd=1, ylab="",xlab="", xaxt="n", col="blue")
axis(1, labels=c("Thu","Fri","Sat"), at=c(1,0.5*length(mydata$Global_active_power),length(mydata$Global_active_power)))
legend("topright",inset=.06,, border = c(NA, NA, "black", NA), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1,1), bty="n", pt.cex=1, cex=0.8)
title(ylab="Energy Sub Metering")

plot(mydata$Voltage, type="l", lwd=1, ylab="",xlab="", xaxt="n")
axis(1, labels=c("Thu","Fri","Sat"), at=c(1,0.5*length(mydata$Global_active_power),length(mydata$Global_active_power)))
title(ylab="Voltage", xlab="datetime")

plot(mydata$Global_reactive_power, type="l", lwd=1, ylab="",xlab="", xaxt="n")
axis(1, labels=c("Thu","Fri","Sat"), at=c(1,0.5*length(mydata$Global_active_power),length(mydata$Global_active_power)))
title(ylab="Global_reactive_power", xlab="datetime")


dev.copy(png,'plot4.png')
dev.off()
}