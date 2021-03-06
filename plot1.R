setwd("~/Documents/datasciencecoursera/project 1")
datasets <- "household.txt"
fulldata <- read.table(datasets, skip = 1, sep = ";")
names(fulldata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
shortlist <- subset(fulldata, fulldata$Date=="1/2/2007"|fulldata$Date=="2/2/2007")
hist(as.numeric(as.character(shortlist$Global_active_power)), col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,file = "plot1.png", width = 480, height = 480, units = "px", bg = "white")
dev.off()
