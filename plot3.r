png(filename="plot3.png")
plot(x = work$timestamp, y = work$Sub_metering_1, xlab = "", ylab = "Energy sub Metering", type = "l")
points(x=work$timestamp, y=work$Sub_metering_2, col='red', type='l')
points(x=work$timestamp, y=work$Sub_metering_3, col='blue', type='l')
legend('topright', names(work)[7:9] , 
       lty=1, col=c('black', 'red', 'blue'), cex=.75)
dev.off()