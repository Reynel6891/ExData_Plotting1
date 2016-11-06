## Script for Plot1

## in the working directory
> table1 <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

## subset data for the selested dates 2007-02-02 and 2007-02-02
> table_dates <- subset(table1,table1$Date %in% c("1/2/2007","2/2/2007"))

## code for plot1
> table_dates_active_power <- as.numeric(as.character(table_dates$Global_active_power))
> hist(table_dates_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)") 

> png("Plot1.png",width= 480, height = 480, units= "px")
> hist(table_dates_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)") 
> dev.off()