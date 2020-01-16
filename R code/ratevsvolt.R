png(file = "E:\\TEMP BACKUP FOR MW\\TEMPDOCS\\hhogen\\R code\\ratevsvoltage.png")

voltage <- c(2, 4, 6, 8)
rates <- c(2.4, 12, 35.6, 73.2)

dframe <- data.frame(voltage, rates)

plot(dframe, col = "dodgerblue")

dev.off()
