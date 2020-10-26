#code for myData is on the plot1.R

#Creating the plot
plot(myData$Global_active_power~myData$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

#Copying to a png file
dev.copy(png,"plot2.png", width=480, height=480)

#Stopping the png device
dev.off()