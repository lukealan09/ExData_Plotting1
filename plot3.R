#We assume that all code from plot1.R and plot2.R has been run. This eliminates
#the need to populate the twoDay data frame. 

dateTime <- strptime(paste(twoDay$Date, twoDay$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)

plot(dateTime, as.numeric(twoDay$Sub_metering_1), type = "l", xlab = "", ylab = "Energy sub metering")
lines(dateTime, as.numeric(twoDay$Sub_metering_2), col = "red")
lines(dateTime, as.numeric(twoDay$Sub_metering_3), col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col=c("black", "red", "blue"))

dev.off()