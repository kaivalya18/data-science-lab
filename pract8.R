# Create the Data Frame

pets <- data.frame(
  Name = c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie"),
  Months_old = c(53, 19, 34, 41, 84, 140, 109),
  Size = c("medium", "small", "medium", "large", "small", "extra small", "large"),
  Weight = c(21, 8, 4, 6, 7, 2, 36),
  Breed = c("dog", "dog", "cat", "cat", "dog", "cat", "dog"),
  stringsAsFactors = TRUE   # store character variables as factors
)
print(pets)


# a) Invert the values for Breed

levels(pets$Breed) <- c("cat", "dog")   # Swapping levels
print(pets$Breed)


# b) Edit levels of Breed variable
# Already done above (Breed is factor with swapped labels)

# c) Access a specific variable
print(pets$Weight)        # Access Weight column
print(pets[, "Size"])     # Access Size column

# d) Add a new column Age_in_years

pets$Age_in_years <- pets$Months_old / 12
print(pets)
# e) Frequency table of Breed vs Size
print(table(pets$Breed, pets$Size))

# f) Average Weight grouped by Breed
print(aggregate(Weight ~ Breed, data = pets, FUN = mean))

# g) Boxplot of Weight by Breed
boxplot(Weight ~ Breed, data = pets,
        col = c("lightblue", "lightgreen"),
        main = "Weight Differences Between Breeds",
        xlab = "Breed", ylab = "Weight")
