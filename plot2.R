# load source code read data file
source('ExData_plotting.R')

# Open PNG Device
png(filename='plot2.png', width=480, height=480, units='px')

# Generate Plot2
plot(hhold.sample$DateTime, hhold.sample$Global_active_power, xlab="",ylab="Global Active Power (Kilowatts)", type='l')

# close PNG Device
dev.off()