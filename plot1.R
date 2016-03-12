plot1 <- function() {
alldata = read.table("household_power_consumption.txt", header=TRUE, colClasses = c("character","character","numeric","numeric", "numeric", "numeric","numeric", "numeric", "numeric"), sep=";", na.strings="?")

mydata<-subset(alldata, Date=="2/2/2007" | Date=="1/2/2007")

hist(mydata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,'plot1.png')
dev.off()
}