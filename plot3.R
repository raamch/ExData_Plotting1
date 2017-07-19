# load source code read data file
source('ExData_plotting.R')

# Open PNG Device
png(filename='plot3.png', width=480, height=480, units='px')

# Generate Plot3
plot(hhold.sample$DateTime, hhold.sample$Sub_metering_1,type='l', ylab ="Energy sub metering", xlab="")
lines(hhold.sample$DateTime, hhold.sample$Sub_metering_2,type='l', col='red')
lines(hhold.sample$DateTime, hhold.sample$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))

# close PNG Device
dev.off()