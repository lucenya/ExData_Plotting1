fileData<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
Data<-fileData[fileData$Date=="1/2/2007"|fileData$Date=="2/2/2007",]
activePower<-as.double(as.character(Data$Global_active_power))
x<-paste(Data$Date,Data$Time)
TimeSel<-strptime(x,"%d/%m/%Y %H:%M:%S")
subMetering1<-as.double(as.character(Data$Sub_metering_1))
subMetering2<-as.double(as.character(Data$Sub_metering_2))
subMetering3<-as.double(as.character(Data$Sub_metering_3))

png(file=".\\ExData_Plotting1\\figure\\plot3.png",width = 480, height = 480, bg="transparent")
plot(TimeSel,subMetering1,xlab="",ylab="Energy sub metering",type="l",col="black")
lines(TimeSel,subMetering2,type="l",col="red")
lines(TimeSel,subMetering3,type="l",col="blue")
legend("topright", lty=1,col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()