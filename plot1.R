setwd("C:/Users/Luke/Dropbox/Data Science Course Work/Exploratory Data Analysis/Week 1")
file <- read.table("household_power_consumption.txt", header = T, sep=";", stringsAsFactors=FALSE)
twoDay <- subset(file, Date %in% c("1/2/2007","2/2/2007"))


png("plot1.png", width=480, height=480)
hist(as.numeric(twoDay$Global_active_power), main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatt)", col = "red")
dev.off()