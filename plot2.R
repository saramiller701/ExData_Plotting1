# Plot 2
df <- read.csv("C:/Users/SMiller/OneDrive - Centrica/Desktop/Exploratory Data Analysis/household_power_consumption.txt",
               header=T, sep=';', stringAsFactors = F, dec =".")
df2 <- subset(df, Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(df2$Date, df2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(df2$Global_active_power)

png("plot2.png", width = 480, height=480)
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()