## Script for Plot2

## in the working directory
> table1 <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

## code for plot2
> table_times <- strptime(paste(table_dates$Date,table_dates$Time,sep = " "), "%d/%m/%Y %H:%M:%S")
> png("Plot2.png",width= 480, height = 480, units= "px")
> plot(x = table_times, y = table_dates_active_power, type = "l", xlab="",ylab="Global Active Power (kilowatts)")
> dev.off()


