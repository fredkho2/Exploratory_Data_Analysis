# Exploratory_Data_Analysis
################################################################################
## File: Exploratory Data Analysis Project 1  
################################################################################

householdFile <- "C:/Users/FK/Desktop/e/2016 Classes/R/AA/household_power_consumption.txt"
plotData <-  read.table(householdFile, header=T, sep=";", na.strings="?",stringsAsFactors = FALSE,strip.white = TRUE)
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-   strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)


#Plot 1:
hist(finalData$Global_active_power,col="red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
dev.copy(png, file="plot1.png", width=480, height=480)
