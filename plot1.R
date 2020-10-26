#Creating the histogram
hist(myData$Global_active_power, 
     main="Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col="red")

#Copying to a png file
dev.copy(png,"plot1.png", width=480, height=480)

#Stopping the png device
dev.off()
