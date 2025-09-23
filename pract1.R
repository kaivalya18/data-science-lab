
x <- 10:20


y <- x + 2


z <- y * 3


answer <- (z - 6) / 3


print(answer)


one_line_result <- ((x + 2) * 3 - 6) / 3
print(one_line_result)


# (i) 1, 1.5, 2, 2.5, …,12
seq1 <- seq(1, 12, by = 0.5)
print(seq1)

# (ii) 1, 8, 27, 64,……,1000 (Cubes from 1^3 to 10^3)
seq2 <- (1:10)^3
print(seq2)



vec <- c(2, 4, 6, 4, 4, 7, 4)
count_value <- sum(vec == 4)
print(paste("Count of 4:", count_value))



a <- c(1, 2, 3, 4, 5)
b <- c(4, 5, 6, 7)
c <- c(5, 8, 9)

common_elements <- Reduce(intersect, list(a, b, c))
print(common_elements)



quotes <- c("Data is the new oil",
            "Big data means big responsibility",
            "Clean data is gold")

contains_data <- grepl("data", quotes, ignore.case = TRUE)
print(contains_data)


