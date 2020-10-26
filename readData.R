#Load the dataset
myData<-read.delim("household_power_consumption.txt",
                   header = TRUE,sep = ";", 
                   na.strings = "?",
                   colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric')
                    )


#Converting to date class
myData$Date <- as.Date(myData$Date,
                       "%d/%m/%Y"
                       )


#Subsetting to get data from required dates
myData <- subset(myData,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))


#Remove missing values
myData<-myData[complete.cases(myData),]


#Combining date and time
dateTime<-paste(myData$Date,myData$Time)

## Name the vector
dateTime <- setNames(dateTime, "DateTime")

## Remove Date and Time column
myData <- myData[ ,!(names(myData) %in% c("Date","Time"))]

## Add DateTime column
myData <- cbind(dateTime, myData)

## Format dateTime Column
myData$dateTime <- as.POSIXct(dateTime)