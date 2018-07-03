
data <- read.table("./data.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
 dim(data) 
print((2075259 *9*8)/2^20)

subset <- data$Date == "1/2/2007" | data$Date == "2/2/2007"
newData <- data[subset, ]

newData$Date <- as.Date(newData$Date, "%d/%m/%Y")
dateTime <- paste(newData$Date, newData$Time)
dateTime <- setNames(dateTime, "DateTime")

newData <- newData[ ,!(names(newData) %in% c("Date","Time"))]
newData <- cbind(dateTime, newData)
newData$dateTime <- as.POSIXct(dateTime)


