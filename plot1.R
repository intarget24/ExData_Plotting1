##This function requiere the path of the file household_power_consumption.txt
plot1<-function(path){
  Sys.setlocale("LC_TIME", "English")
  ##create the png file 
  
  png(filename = "plot1.png",width = 480, height = 480, units = "px", pointsize = 12,type = c("windows", "cairo","cairo-png"))
  ##reading data from the dates 2007-02-01 and 2007-02-02.
  ##The file is located in the working directory ~/household_power_consumption.txt"
  re<-read.table(path, header=TRUE, sep=";",dec=".",na.strings = "?",nrows=2880,skip=66636)
  ##set column names to data.frame
  colnames(re)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  ##Creating the graph with the data
  hist(re$Global_active_power, col="red", main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
  ##closing file
  dev.off()
  
  print("Graph created in the working directory");
}


