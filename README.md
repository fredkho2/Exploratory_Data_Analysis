################################################################################
## File: Exploratory Data Analysis Project 1  
################################################################################

householdFile <- "C:/Users/FK/Desktop/e/2016 Classes/R/AA/household_power_consumption.txt"
plotData <-  read.table(householdFile, header=T, sep=";", na.strings="?",stringsAsFactors = FALSE,strip.white = TRUE)
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-   strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)


#Plot 4

par(mfrow=c(2,2))

plot(finalData$timestamp,finalData$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(finalData$timestamp,finalData$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(finalData$timestamp,finalData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(finalData$timestamp,finalData$Sub_metering_2,col="red")
lines(finalData$timestamp,finalData$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1) ) 

plot(finalData$timestamp,finalData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

