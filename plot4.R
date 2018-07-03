source("Course Project1.R")
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))

plot(newData$dateTime, newData$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

plot(newData$dateTime, newData$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(newData$dateTime, newData$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(newData$dateTime, newData$Sub_metering_2, col = "red")
lines(newData$dateTime, newData$Sub_metering_3, col = "blue")

legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

plot(newData$dateTime, newData$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newData)[4])
dev.off()