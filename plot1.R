# load source code read data file
source('ExData_plotting.R')

# Open PNG Device
png(filename='plot1.png', width=480, height=480, units='px')

# Generate Plot1
hist(hhold.sample$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")

# close PNG Device
dev.off()