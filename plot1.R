# Plot 1
df <- read.csv("C:/Users/SMiller/OneDrive - Centrica/Desktop/Exploratory Data Analysis/household_power_consumption.txt",
               header=T, sep=';', stringAsFactors = F, dec =".")
df2 <- subset(df, Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(df2$Date, df2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot1.png", width = 480, height=480)
with(df2, hist(Global_active_power, xlab = "Global Active Power (kilowatts)", 
               ylab = "Frequency", main = "Global Active Power", col = "red"))
dev.off()
