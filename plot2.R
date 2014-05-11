myData <-global_active_power<-read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
myData <- myData[complete.cases(myData),]
myData <- myData[myData[,1]=="1/2/2007" | myData[,1]=="2/2/2007",] 
myData[,3] <- as.numeric(as.character(myData[,3]))
myData$datatime <- strptime(paste(myData$Date, myData$Time), format="%d/%m/%Y %H:%M:%S")
plot(myData$datatime,myData$Global_active_power,type="l",ylab = "Global Active Power (kilowatts)",xlab="")
png(filename = "C:/Users/Administrator/Desktop/test3/plot2.png",
    width = 480, height = 480, units = "px")
plot(myData$datatime,myData$Global_active_power,type="l",ylab = "Global Active Power (kilowatts)",xlab="")
dev.off()
