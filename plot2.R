#We assume that all code from plot1.R has already been run. This eliminates
#the need to populate the twoDay data frame.

dateTime <- strptime(paste(twoDay$Date, twoDay$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(dateTime, as.numeric(twoDay$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts")
dev.off()