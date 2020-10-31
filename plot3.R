## plot 3
png(filename = "plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "serif", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"),
    symbolfamily="default")

graphics::matplot(data_in_select$Date_complete,
                  data_in_select[, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")], 
                  type = 'l', lwd = 1.2, lty = 1,
                  col = c("black", "red", "blue"),
                  ylab = "Energy sub metering", xlab = "")
graphics::legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                 col = c("black", "red", "blue"), lty = 1)
dev.off()
