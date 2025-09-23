# Example vector
items <- c("Apple", "Banana", "Cherry", "Date", "Elderberry")
# Selecting 3 random fruits for a fruit basket
basket <- sample(items, size = 3, replace = FALSE)
cat("Random Fruit Basket:", basket, "\n")


lvl <- c(10, 20, 30, NA, 50)
median_lvl_true <- median(lvl, na.rm = TRUE)
cat("Median of lvl with na.rm = TRUE:", median_lvl_true, "\n")


median_lvl_false <- median(lvl, na.rm = FALSE)
cat("Median of lvl with na.rm = FALSE:", median_lvl_false, "\n")

if (is.na(median_lvl_false)) {
  cat("When na.rm = FALSE, median returns NA because there are missing values.\n")
}


atk <- c(5, 15, 25, 35, 45)
median_atk_true <- median(atk, na.rm = TRUE)
median_atk_false <- median(atk, na.rm = FALSE)
cat("Median of atk with na.rm = TRUE:", median_atk_true, "\n")
cat("Median of atk with na.rm = FALSE:", median_atk_false, "\n")



if (median_atk_true == median_atk_false) {
  cat("No difference for atk because it has no NA values.\n")
} else {
  cat("Difference exists because NA values affect calculation.\n")
}



# Step 3: Example plot on iris dataset
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point()


# e) which() function - find positions of values greater than 8
x <- c(3, 8, 5, 12, 8, 15)
which(x > 8)

# f) Frequency table of categorical data
colors <- c("Red", "Blue", "Red", "Green", "Blue", "Red", "Green", "Green")
table(colors)

# g) subset() function - get rows where age > 25
people <- data.frame(
  name = c("Amit", "Priya", "Ravi", "Neha"),
  age = c(22, 28, 25, 30)
)
subset(people, age > 25)

# h) ifelse() function - pass/fail based on marks
marks <- c(45, 67, 89, 30, 55)
ifelse(marks >= 50, "Pass", "Fail")




install.packages("ggplot2")   # Install ggplot2 once
library(ggplot2)              # Load the package

# i)
cat("Plotting Sepal dimensions using ggplot2...\n")
library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(
    title = "Sepal Dimensions by Species",
    x = "Sepal Length",
    y = "Sepal Width"
  ) +
  theme_minimal()




