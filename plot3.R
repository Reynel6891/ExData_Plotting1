## Script for Plot3

## in the working directory
> table1 <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

## subset data for the selected dates 2007-02-02 and 2007-02-02
> table_dates <- subset(table1,table1$Date %in% c("1/2/2007","2/2/2007"))

## code for plot 3
> Table_Sub_metering_1 <- as.numeric(as.character(table_dates$Sub_metering_1))
> Table_Sub_metering_2 <- as.numeric(as.character(table_dates$Sub_metering_2))
> Table_Sub_metering_3 <- as.numeric(as.character(table_dates$Sub_metering_3))

> png("Plot3.png",width= 480, height = 480, units= "px")
> plot(x = table_times, y = Table_Sub_metering_1, col ="black", type = "l", xlab="",ylab="Energy sub metering")
> lines(x = table_times, y = Table_Sub_metering_2, col ="red")
> lines(x = table_times, y = Table_Sub_metering_3, col ="blue")
> legend("topright", lwd = 1, col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
> dev.off()

