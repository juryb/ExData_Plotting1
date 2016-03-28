setwd("~/ExData_Plotting1")
Data <-read.csv("Electric power consumption.csv",sep = ",",na.strings="?",
header = TRUE, stringsAsFactors=FALSE)

hist(Data$Global_active_power,main = "Global Active Power"
     ,xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red")
dev.copy(png,file="plot1.png")
dev.off()