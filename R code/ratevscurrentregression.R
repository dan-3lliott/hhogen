current <- c(4, 8, 12, 16, 20)
rates <- c(1.73, 2.44, 2.88, 3.11, 3.29)

linreg <- lm(rates~current)
expreg <- lm(log(rates)~current)
pwrreg <- lm(log(rates)~log(current))
logreg <- lm(rates~log(current))

print(summary(linreg))
print(summary(expreg))
print(summary(pwrreg))
print(summary(logreg))

png(file = "ratevscurrentregression.png")

plot(log(current), rates, col = "dodgerblue", pch = 19, xlab = "log(Current) (A)", ylab = "Rate of Oxyhydrogen Gas Production (ml/min)", main = "Rate of Oxyhydrogen Gas Production vs. Current\n(Logarithmic Regression)", yaxt = "n")
axis(2, seq(1.75, 3.25, by = 0.25))
abline(logreg, col = "firebrick1", lwd = 2.5)

dev.off()
