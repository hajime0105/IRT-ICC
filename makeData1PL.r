logistic <- function(a, b, theta) {
  prob <- 1 / (1 + exp(-1.7 * a * (theta - b)))
  prob
}

Person <- 100
Item <- 5

data <- matrix(nrow = Person, ncol = Item)
test <- matrix(nrow = Item, ncol = 2)
person <- matrix(nrow = Person, ncol = 1)

theta <- rnorm(Person, 0, 1) * 4

test[, 1] <- c(1, 1, 1, 1, 1)
test[, 2] <- c(-4, -2, 0, 2, 4)

for (i in 1:Person) {
  person[i,1] <- round(theta[i], 1)
}

for (i in 1:Item) {
  for (j in 1:Person) {
    data[j, i] <- logistic(test[i, 1], test[i, 2], person[j, 1])
    data[j, i] <- round(data[j, i], 2)
  }
}

write.table(data, "dataProbability.csv", quote = FALSE, row.names = FALSE, col.name = FALSE, sep = ",")
