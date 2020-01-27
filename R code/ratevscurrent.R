png(file = "ratevscurrent.png")

current <- c(1.25, 2.5, 3.75, 5)
rates <- c(2.4, 12, 35.6, 73.2)

plot(current, rates, col = "dodgerblue", type = "l",lwd = 2.5, xlab = "Current (A)", ylab = "Rate of Oxyhydrogen Gas Production (ml/min)", main = "Current vs Rate of Gas Production")
points(current, rates, pch = 19, col = "dodgerblue")

dev.off()
