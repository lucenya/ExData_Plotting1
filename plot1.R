fileData<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
Data<-fileData[fileData$Date=="1/2/2007"|fileData$Date=="2/2/2007",]
activePower<-as.double(as.character(Data$Global_active_power))

png(file=".\\ExData_Plotting1\\figure\\plot1.png",width = 480, height = 480, bg="transparent")
hist(activePower,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()