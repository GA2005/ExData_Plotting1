#change the file path
filepath<-file.path("c://DataSceince//ExploratoryData//Week1//exdata-data-household_power_consumption//household_power_consumption.txt")
#read file to a table 
hpc_data <- read.table(filepath,sep=";",header=TRUE)
#format the Data to date objects
hpc_data$Date <- as.Date(hpc_data$Date, format = "%d/%m/%Y")
#subset the data to a new data frame with the expected dates
subset_hpc <- subset(hpc_data,hpc_data$Date == "2007-02-01" | hpc_data$Date == "2007-02-02")
#Combine the date and time to the same column
subset_hpc$Date<-paste(subset_hpc$Date,subset_hpc$Time)
#format the datetime 
subset_hpc$Date <- strptime(subset_hpc$Date, format = "%d-%m-%Y %H:%M:%S")
#hpc_data$Date <- strptime(hpc_data$Date, format = "%d/%m/%Y %H:%M:%S")
#hist(as.numeric(as.factor(hpc_data$Global_active_power))/1000,xlab = "Global Active Power(Kilowatts)",col="red", ylab = "Frequency", freq = TRUE, main= "Global Active Power",)
#plot the histogram with the conversion of kilowatts
hist(as.numeric(as.factor(subset_hpc$Global_active_power))/1000,xlab = "Global Active Power(Kilowatts)",col="red", ylab = "Frequency", main= "Global Active Power")
#copy to a png file 
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
