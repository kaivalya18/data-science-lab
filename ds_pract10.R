#prac10_ds
before <- c(80, 75, 90, 85, 95, 100, 70, 65, 88, 92)
after  <- c(78, 73, 86, 82, 91, 97, 69, 64, 85, 89)
before
after
diff <- before - after
mean_diff <- mean(diff)
sd_diff <- sd(diff)
n <- length(diff)
t_value <- mean_diff / (sd_diff / sqrt(n))
t_value   

t_test_result <- t.test(before, after, paired = TRUE, alternative = "greater")
print(t_test_result)
