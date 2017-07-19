# load source code read data file
source('ExData_plotting.R')

# Open PNG Device
png(filename='plot4.png', width=480, height=480, units='px')

# Generate Plot4
par(mfrow = c(2,2), mar = c(4,4,1,1))
# plot4.1
plot(hhold.sample$DateTime, hhold.sample$Global_active_power,xlab="",ylab="Global Active Power",type='l')
# plot4.2
plot(hhold.sample$DateTime, hhold.sample$Voltage, xlab="datetime",ylab="Voltage",type='l' )
# plot4.3
plot(hhold.sample$DateTime, hhold.sample$Sub_metering_1,xlab="",ylab="Global Active Power",type='l')
lines(hhold.sample$DateTime, hhold.sample$Sub_metering_2,type='l', col='red')
lines(hhold.sample$DateTime, hhold.sample$Sub_metering_3,type='l', col='blue')
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
# plot4.4
plot(hhold.sample$DateTime, hhold.sample$Global_reactive_power,type='l',xlab="datetime",ylab="Global_reactive_power")

# close PNG Device
dev.off()