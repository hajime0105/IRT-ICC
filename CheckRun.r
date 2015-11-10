library(ltm)

source("changeData.r")
data <- read.csv("dataLogic.csv", header = FALSE)
mod <- rasch(data, IRT.param = TRUE)
print(mod)
plot(mod, lwd = 3, cex.axis = 2, cex.lab = 1.5, xlab = "θ", ylab = "P(θ)", main = "")
print(summary(mod))
