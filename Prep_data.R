Data <-read.table("./household_power_consumption.txt",sep = ";",na.strings="?",
                  header = TRUE, stringsAsFactors=FALSE)
Data$DateTime <- paste(Data$Date,Data$Time)

Data$Date <- as.Date(Data$Date,"%d/%m/%Y")
Data <-Data[ (Data$Date == "2007-02-01")| (Data$Date ==  "2007-02-02"),]

Data$DateTime <- strptime(Data$DateTime, "%d/%m/%Y %H:%M:%S")

write.csv(Data,"Electric power consumption.csv")


