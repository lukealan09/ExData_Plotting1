#We assume that all code from plot1.R, plot2.R, and plot3.R has been run. This eliminates
#the need to populate the twoDay data frame. 

dateTime <- strptime(paste(twoDay$Date, twoDay$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(dateTime, as.numeric(twoDay$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts")

plot(dateTime, as.numeric(twoDay$Voltage), type = "l", xlab = "datetime", ylab = "Voltage")

plot(dateTime, as.numeric(twoDay$Sub_metering_1), type = "l", xlab = "", ylab = "Energy sub metering")
lines(dateTime, as.numeric(twoDay$Sub_metering_2), col = "red")
lines(dateTime, as.numeric(twoDay$Sub_metering_3), col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col=c("black", "red", "blue"), cex = 0.75, bty = "n")

plot(dateTime, as.numeric(twoDay$Global_reactive_power), type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
