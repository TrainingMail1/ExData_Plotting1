myData <-global_active_power<-read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
myData <- myData[complete.cases(myData),]
myData <- myData[myData[,1]=="1/2/2007" | myData[,1]=="2/2/2007",] 
myData[,3] <- as.numeric(as.character(myData[,3]))
myData$datatime <- strptime(paste(myData$Date, myData$Time), format="%d/%m/%Y %H:%M:%S")
png(filename = "C:/Users/Administrator/Desktop/test3/plot3.png",
    width = 480, height = 480, units = "px")
plot (myData$datatime,myData$Sub_metering_1,type="l",xlab="",ylab="Energy Sub metering")
lines(myData$datatime,myData$Sub_metering_2,col="red")
lines(myData$datatime,myData$Sub_metering_3,col="blue")
legend("topright",cex=0.7, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()