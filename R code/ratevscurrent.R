png(file = "ratevscurrent.png")

current <- c(4, 8, 12, 16, 20)
rates <- c(1.73, 2.44, 2.88, 3.11, 3.29)

plot(current, rates, col = "dodgerblue", type = "l",lwd = 2.5, xlab = "Current (A)", ylab = "Rate of Oxyhydrogen Gas Production (ml/sec)", main = "Current vs Rate of Gas Production", xaxt = "n", yaxt = "n")
axis(1, at = seq(4, 20, by = 4))
axis(2, at = seq(1.75, 3.25, by = 0.25))
points(current, rates, pch = 19, col = "dodgerblue")

dev.off()
