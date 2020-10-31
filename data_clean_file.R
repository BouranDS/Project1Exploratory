## Project 1 for Week 1
# author : ibrahima dit bouran sidibe
# require(magrittr)
data_in <- read.csv2(file = "D:/MyR/exdata_data_household_power_consumption/household_power_consumption.txt", 
                     header = TRUE, sep = ";", stringsAsFactors = FALSE)
# head(data_in)
# tail(data_in)
# str(data_in)
data_in <- base::transform(data_in, Date = lubridate::as_date(Date, format = "%d/%m/%Y"))
#data_in <- base::transform(data_in, Time = lubridate::hms(Time))
#
my_name <- colnames(data_in) != "Date" & colnames(data_in) != "Time" 
for(ikl in 1:length(colnames(data_in))){
  if(my_name[ikl]){
    data_in[, ikl] <- base::as.numeric(data_in[, ikl])
    #print(colnames(data_in)[ikl])
  }
}

data_in_sub <- data_in$Date %>% dplyr::between(as.Date("2007-02-01"), as.Date("2007-02-02"))
data_in_select <- data_in[data_in_sub, ]
Date_compl <- lubridate::ymd_hms(
  paste(lubridate::ymd(data_in_select$Date), data_in_select$Time)
)
data_in_select$Date_complete <- Date_compl
# summary(data_in[, my_name])
# table(data_in$Global_reactive_power)
# as.Date(data_in$Time, format = "%H:%M:%S")



