totalinput <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
totalinput$Date <- as.Date(totalinput$Date, "%d/%m/%Y")
totalinput$Time <- strptime(totalinput$Time, "%H:%M:%S")

a <- subset(totalinput, totalinput$Date == "2007-02-01")
b <- subset(totalinput, totalinput$Date == "2007-02-02")
work <- rbind(a, b)
rm(a, b)

plot1 <- hist(work$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

png(filename="plot1.png")
plot1 <- hist(work$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()