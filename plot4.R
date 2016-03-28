setwd("~/ExData_Plotting1")
Data <-read.csv("Electric power consumption.csv",sep = ",",na.strings="?",
                header = TRUE, stringsAsFactors=FALSE)

Data$DateTime <- strptime(Data$DateTime, "%Y-%m-%d %H:%M:%S")

png(filename = "plot4.png", width = 480, height = 480, units = "px")

par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
with(Data,{
    plot(Data$DateTime,Data$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")
    
    plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")
    
    plot(Data$DateTime, Data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(Data$DateTime, Data$Sub_metering_2, type="l", col="red")
    lines(Data$DateTime, Data$Sub_metering_3, type="l", col="blue")
    legend("topright", lty=1, lwd=1, col=c("black","blue","red"), 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l") 
    
})
dev.off()
