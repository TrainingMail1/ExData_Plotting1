myData <-global_active_power<-read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
myData <- myData[complete.cases(myData),]
myData <- myData[myData[,1]=="1/2/2007" | myData[,1]=="2/2/2007",] 
myData[,3] <- as.numeric(as.character(myData[,3]))                        
hist(x=myData$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red");
png(filename = "C:/Users/Administrator/Desktop/test3/plot1.png",
    width = 480, height = 480, units = "px")
hist(x=myData$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red");
dev.off()

