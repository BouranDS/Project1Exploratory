## plot 2
png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "serif", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"),
    symbolfamily="default")

with(data_in_select, 
     plot(Date_complete, Global_active_power, type = 'l',
          main = "Global Active Power",
          ylab = "Global Active Power (kilowatts)",
          xlab = "")
)
dev.off()
