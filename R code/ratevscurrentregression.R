current <- c(1.25, 2.5, 3.75, 5)
rates <- c(2.4, 12, 35.6, 73.2)

linreg <- lm(rates~current)
expreg <- lm(log(rates)~current)
pwrreg <- lm(log(rates)~log(current))

print(summary(linreg))
print(summary(expreg))
print(summary(pwrreg))

png(file = "ratevscurrentregression.png")

plot(log(current), log(rates), col = "dodgerblue", pch = 19, xlab = "log(Current) (A)", ylab = "log(Rate of Oxyhydrogen Gas Production) (ml/min)", main = "Current vs Rate of Gas Production (Power Regression)")
abline(pwrreg, col = "firebrick1")

dev.off()
