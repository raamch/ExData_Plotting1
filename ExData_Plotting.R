## Assignment: Exploratory Data Analysis, Week 1 
## Objective : Measurements of electric power consumption in one household with a one-minute sampling rate over a 
##             period of almost 4 years. Different electrical quantities and some sub-metering values are available.
## Dataset   : Electric power consumption file from UC Irvine Machine Learning Repository
## Source URL: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# Set working directory
#setwd("~/workspace")

# Download the file and put the file in the data folder
if(!file.exists("household_power_consumption.txt"))
  { download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile="Dataset.zip")

    # Unzip to create household_power_consumption.txt file
    unzip(zipfile="Dataset.zip")
  }
# Load file
hhold.data<-read.table("./data/household_power_consumption.txt",header = TRUE, sep= ";", strip.white=TRUE, na.strings="?")

#filter data for 2007 Feb 1st and 2nd dates
hhold.sample <- subset(hhold.data,Date %in% c("1/2/2007","2/2/2007"))

# Combine Date & Time and convert to date time format
hhold.sample$DateTime <- strptime(paste(hhold.sample$Date, hhold.sample$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
