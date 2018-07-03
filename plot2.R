source("Course Project1.R")
png(filename = "plot2.png", 
     width = 480, height = 480,
     units = "px", bg = "transparent")
plot(newData$dateTime, newData$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()