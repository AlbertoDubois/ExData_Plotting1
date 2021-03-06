#Read the data from the selected dates

link = "household_power_consumption.txt"
hpower = read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";",col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE,sep=";")))

hpower$Date=as.Date(hpower$Date,format="%d/%m/%Y")
hpower$Date2=paste(sub2$Date,sub2$Time)
hpower$Date2 = strptime(hpower$Date2,"%Y-%m-%d %H:%M:%S")


#Make the plot
plot(hpower$Date2, hpower$Sub_metering_1, type="l",ylab="Energy Submetering", xlab="")
lines(hpower$Date2, hpower$Sub_metering_2, type="l", col="red")
lines(hpower$Date2, hpower$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd =2.5,col=c("black", "red", "blue"))
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()