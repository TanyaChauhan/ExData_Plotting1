data<-"C:/Users/hp/Desktop/household_power_consumption.txt"
Power_House<-read.table(data,sep = ";",header = TRUE,stringsAsFactors = FALSE)
head(Power_House)
Required_Data<- Power_House[Power_House$Date %in% c("1/2/2007","2/2/2007"),]
dim(Required_Data)
str(Required_Data)
png("plot1.png", width=480, height=480)
globalActivePower <- as.numeric(Required_Data$Global_active_power)
hist(globalActivePower,col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()