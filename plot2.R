setwd("~/ExData_Plotting1")
Data <-read.csv("Electric power consumption.csv",sep = ",",na.strings="?",
                header = TRUE, stringsAsFactors=FALSE)

Data$DateTime <- strptime(Data$DateTime, "%Y-%m-%d %H:%M:%S")

plot(Data$DateTime,Data$Global_active_power,
     type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png,file="plot2.png")
dev.off()