data<-"C:/Users/hp/Desktop/household_power_consumption.txt"
Power_House<-read.table(data,sep = ";",header = TRUE,stringsAsFactors = FALSE)
head(Power_House)
Required_Data<- Power_House[Power_House$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower <- as.numeric(Required_Data$Global_active_power)
datetime<-strptime(paste(Required_Data$Date,Required_Data$Time),"%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()