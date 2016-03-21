################################################################################
## File: Exploratory Data Analysis Project 1  
################################################################################

householdFile <- "C:/Users/FK/Desktop/e/2016 Classes/R/AA/household_power_consumption.txt"
plotData <-  read.table(householdFile, header=T, sep=";", na.strings="?",stringsAsFactors = FALSE,strip.white = TRUE)
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-   strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)



#Plot 2:
finalData$Date <- as.Date(finalData$Date, format="%d/%m/%Y")
finalData <- transform(finalData, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
plot(finalData$timestamp,finalData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

