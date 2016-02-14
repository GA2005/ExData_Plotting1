#create 2 by 2 area for plot
par(mfrow=c(2,2))
#plot various plots for the ACtivepower, vlotage, EnergyMetring and reasctive power.
plot(subset_hpc$Date,as.numeric(as.factor(subset_hpc$Global_active_power))/1000, type="l",xlab = "", ylab = "Global Active Power" )
plot(subset_hpc$Date,as.numeric(as.factor(subset_hpc$Voltage))/10, type="l",xlab = "datetime", ylab = "Voltage" )
plot(subset_hpc$Date,as.numeric(as.factor(subset_hpc$Sub_metering_1)), type="l",xlab = "", ylab = "Energy sub metering" )
lines(subset_hpc$Date,as.numeric(as.factor(subset_hpc$Sub_metering_2)),col="red")
lines(subset_hpc$Date,as.numeric(as.factor(subset_hpc$Sub_metering_3)),col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1 ","Sub_metering_2 ","Sub_metering_3 "),lty=c(1,1),lwd=c(1,1))
plot(subset_hpc$Date,as.numeric(as.factor(subset_hpc$Global_reactive_power))/10, type="l",xlab = "datetime", ylab = "Global_reactive_power" )
#copy to file
dev.copy(png,file="plot4.png",width=480,height=480)
#close the device
dev.off()