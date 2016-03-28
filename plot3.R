setwd("~/ExData_Plotting1")
Data <-read.csv("Electric power consumption.csv",sep = ",",na.strings="?",
                header = TRUE, stringsAsFactors=FALSE)

Data$DateTime <- strptime(Data$DateTime, "%Y-%m-%d %H:%M:%S")

plot(Data$DateTime, Data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(Data$DateTime, Data$Sub_metering_2, type="l", col="red")
lines(Data$DateTime, Data$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png,file="plot3.png")
dev.off()