# a) Load libraries — none needed (base R)

# b) Load the data as a tibble equivalent (use data.frame here)
if (!file.exists("house.csv")) {
  set.seed(42)
  size  <- round(runif(50, 500, 2000), 1)
  price <- 30000 + 150*size + rnorm(50, sd = 20000)
  write.csv(data.frame(size, price), "house.csv", row.names = FALSE)
}
dat <- read.csv("house.csv", stringsAsFactors = FALSE)

# c) Descriptives
summary(dat)
str(dat)

# d) Define the linear model
m <- lm(price ~ size, data = dat)

# e) Plot the regression line
plot(dat$size, dat$price, pch = 19, xlab = "Size", ylab = "Price", main = "Price vs Size")
abline(m, lwd = 2, col = "red")

# f) Print the results
summary(m)

# g) Number of observations
nrow(m$model)

# h) R-squared and brief meaning
summary(m)$r.squared
cat("Proportion of variance in price explained by size\n")

# i) Significance of size
summary(m)$coefficients["size","Pr(>|t|)"]

# j) Regression equation
b <- coef(m)
cat(sprintf("price = %.4f + %.4f*size\n", b[1], b[2]))
