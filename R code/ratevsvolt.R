png(file = "ratevsvoltage.png")

voltage <- c(2, 4, 6, 8)
rates <- c(2.4, 12, 35.6, 73.2)

dframe <- data.frame(voltage, rates)

plot(dframe, col = "dodgerblue", type = "l",lwd = 2.5, xlab = "Voltage (V)", ylab = "Rate of Oxyhydrogen Gas Production (ml/min)", main = "Input Voltage vs Rate of Gas Production")
points(dframe, pch = 19, col = "dodgerblue")

dev.off()
