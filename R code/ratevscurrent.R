png(file = "ratevscurrent.png")

current <- c(4, 8, 12, 16, 20)
rates <- c(1.73, 2.44, 2.88, 3.11, 3.29)

plot(current, rates, col = "dodgerblue", type = "l",lwd = 2.5, xlab = "Current (A)", ylab = "Rate of Oxyhydrogen Gas Production (ml/min)", main = "Current vs Rate of Gas Production")
points(current, rates, pch = 19, col = "dodgerblue")

dev.off()
