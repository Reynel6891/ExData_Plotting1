## Script for Plot4

## in the working directory
> table1 <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

## subset data for the selected dates 2007-02-02 and 2007-02-02
> table_dates <- subset(table1,table1$Date %in% c("1/2/2007","2/2/2007"))

## code for plot 4

> table_Voltage <- as.numeric(as.character(table_dates$Voltage))
> table_reactive_power <- as.numeric(as.character(table_dates$Global_reactive_power))

> png("Plot4.png",width= 480, height = 480, units= "px")
> par(mfrow = c(2,2)) 

> hist(table_dates_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
> plot(x = table_times, y = table_Voltage, type = "l", xlab="datetime",ylab="Voltage")
> plot(x = table_times, y = Table_Sub_metering_1, col ="black", type = "l", xlab="",ylab="Energy sub metering")
> lines(x = table_times, y = Table_Sub_metering_2, col ="red")
> lines(x = table_times, y = Table_Sub_metering_3, col ="blue")
> legend("topright", lwd = 1, col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
> plot(x = table_times, y = table_reactive_power, type = "l", xlab="datetime",ylab="Global_Reactive_Power")
> dev.off()