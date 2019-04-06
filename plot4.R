# Plot 4
df <- read.csv("C:/Users/SMiller/OneDrive - Centrica/Desktop/Exploratory Data Analysis/household_power_consumption.txt",
               header=T, sep=';', stringAsFactors = F, dec =".")
df2 <- subset(df, Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(df2$Date, df2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(df2$Global_active_power)
GlobalReactivePower <- as.numeric(df2$Global_reactive_power)
Voltage <- as.numeric(df2$Voltage)
SubMetering1 <- as.numeric(df2$Sub_metering_1)
SubMetering2 <- as.numeric(df2$Sub_metering_2)
SubMetering3 <- as.numeric(df2$Sub_metering_3)

png("plot4.png", width = 480, height=480)
par(mfrow=c(2,2))

plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power")

plot(datetime, Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, SubMetering1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, SubMetering2, type="l", col="red")
lines(datetime, SubMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="n")

plot(datetime, GlobalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()