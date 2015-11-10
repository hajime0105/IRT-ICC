data2 <- matrix(nrow = Person, ncol = Item)

for (i in 1:Item) {
  for (j in 1:Person) {
    data2[j, i] <- 0
  }
}

for (i in 1:Item) {
  for (j in 1:Person) {
    x <- runif(1, min = 0, max = 1)
    if (x <= data[j, i]) {
      data2[j, i] <- 1
    }
  }
}

write.table(data2, "dataLogic.csv", quote = FALSE, row.names = FALSE, col.name = FALSE, sep = ",")
