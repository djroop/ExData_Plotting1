temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
t1 <- read.table(unz(temp, "household_power_consumption.txt"), sep=";", header=TRUE, na.strings="?")
unlink(temp); rm(temp)
t2 <- t1[66637:69516,]
with(t2, plot(Global_active_power, type="n", xlab="", xaxt="n", ylab="Global Active Power (kilowatts)"))
axis(1, at=c(1,1440,2880), labels=c("Thursday", "Friday", "Saturday"))
lines(t2$Global_active_power, type="l")