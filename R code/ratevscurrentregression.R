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

plot(log(current), rates, col = "dodgerblue", pch = 19, xlab = "log(Current) (A)", ylab = "log(Rate of Oxyhydrogen Gas Production) (ml/min)", main = "Current vs Rate of Gas Production (Power Regression)")
abline(logreg, col = "firebrick1", lwd = 2.5)

dev.off()
