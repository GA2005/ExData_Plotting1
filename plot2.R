plot(subset_hpc$Date,as.numeric(as.factor(subset_hpc$Global_active_power))/1000, type="l",xlab = "", ylab = "Global Active Power (kilowatts)" )
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()