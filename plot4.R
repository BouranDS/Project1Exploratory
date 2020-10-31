## plot 4
png(filename = "plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "serif", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"),
    symbolfamily="default")

par(mfrow = c(2,2))
with(data_in_select, 
     plot(Date_complete, Global_active_power, type = 'l',
          main = "Global Active Power",
          ylab = "Global Active Power (kilowatts)",
          xlab = "")
)
#
with(data_in_select, 
     plot(Date_complete, Voltage, type = 'l',
          main = "",
          ylab = "Voltage",
          xlab = "datetime")
)
#

graphics::matplot(data_in_select$Date_complete,
                  data_in_select[, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")], 
                  type = 'l', lwd = 1.2, lty = 1,
                  col = c("black", "red", "blue"),
                  ylab = "Energy sub metering", xlab = "")
graphics::legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                 col = c("black", "red", "blue"), lty = 1,
                 bty = 'n')
#
with(data_in_select, 
     plot(Date_complete, Global_reactive_power, type = 'l',
          main = "",
          ylab = "Global_reactive_power",
          xlab = "datetime")
)
dev.off()
par(mfrow = c(1,1))
