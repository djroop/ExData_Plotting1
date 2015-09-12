temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
t1 <- read.table(unz(temp, "household_power_consumption.txt"), sep=";", header=TRUE, na.strings="?")
unlink(temp); rm(temp)
t2 <- t1[66637:69516,]
hist(t2$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")