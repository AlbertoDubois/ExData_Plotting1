#Read the data from the selected dates (idea taken from the discussion forum, not copied)
link = "household_power_consumption.txt"
hpower = read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";",col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE,sep=";")))

#Make the plot
hist(hpower$Global_active_power, col= "red",main= "Global Active Power", xlab= "Global Active Power (kilowatts)", ylab= "Frequency")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
