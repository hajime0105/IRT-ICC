Person <- 20
Item <- 5

data <- matrix(nrow = Person, ncol = Item)
test <- matrix(nrow = Item, ncol = 2)
person <- matrix(nrow = Person, ncol = 1)

a <- runif(Item, min = 0, max = 1.0)
b <- runif(Item, min = -2.0, max = 2.0)
theta <- rnorm(Person, 0, 1)

for (i in 1:Item) {
  test[i, 1] <- round(a[i], 4)
  test[i, 2] <- round(b[i], 4)
}
for (i in 1:Person) {
  person[i,1] <- round(theta[i], 1)
}

for (i in 1:Item) {
  for (j in 1:Person) {
    data[j, i] <- (1 / (1 + exp(-1.7 * test[i, 1] * (person[j,1] - test[i, 2]))))
    data[j, i] <- round(data[j, i], 4)
  }
}

write.table(data, "dataProbability.csv", quote = FALSE, row.names = FALSE, col.name = FALSE, sep = ",")
