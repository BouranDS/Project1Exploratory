## plot 1
png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "serif", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"),
    symbolfamily="default")

with(data_in_select, 
     hist(Global_active_power, col = "red",
          main = "Global Active Power",
          xlab = "Global Active Power (kilowatts)",
          ylab = "Frequency")
)
dev.off()
