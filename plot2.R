##This function requiere the path of the file household_power_consumption.txt
plot2<-function(path){
  ##create the png file 
  png(filename = "plot2.png",width = 480, height = 480, units = "px", pointsize = 12,type = c("windows", "cairo","cairo-png"))
  ##reading data from the dates 2007-02-01 and 2007-02-02.
  ##The file is located in the working directory
  re<-read.table(path, header=TRUE, sep=";",dec=".",na.strings = "?",nrows=2880,skip=66636)
  ##set column names to data.frame
  colnames(re)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
    
  ##transform the date to datetime info
  re$Date <- strptime(paste(re$Date,re$Time), "%d/%m/%Y %H:%M:%S")
  
  ##Creating the graph with the data
  plot(re$Date,re$Global_active_power,type="l", ylab="Global Active Power (kilowatss)", xlab="")
  
  
  ##closing file
  dev.off()
  
  print("Graph created in the working directory");
}

