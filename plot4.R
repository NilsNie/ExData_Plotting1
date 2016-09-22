png(filename="plot4.png")
par(mfcol = c(2,2)) 
a <- plot(x = work$timestamp, y = work$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

b <- plot(x = work$timestamp, y = work$Sub_metering_1, xlab = "", ylab = "Energy sub Metering", type = "l")
points(x=work$timestamp, y=work$Sub_metering_2, col='red', type='l')
points(x=work$timestamp, y=work$Sub_metering_3, col='blue', type='l')
legend('topright', names(work)[7:9] , col=c('black', 'red', 'blue'), cex=.35)

c <- plot(x = work$timestamp, y = work$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power (kilowatts)")

d <- plot(x = work$timestamp, y = work$Global_active_power, type = "l", xlab = "datetime")
dev.off()