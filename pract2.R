# a) Create a vector called monster, storing the values T, T, T, F, T, T, T, T, T, T.
monster <- c(TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
print(monster)

# b) Create the character vector yugioh vector. Check the type of yugioh.
yugioh <- c("kaivalya", "sawant", "sanjay", "hello", "hi")
print(yugioh)
typeof(yugioh)

# c) Combine the monster and yugioh vector. Check its type.
combined <- c(monster, yugioh)
print(combined)
typeof(combined)

# d) Create atk numerical vector and combine atk and monster into a vector called coerce.check. Check its type and print it, if you need.
atk <- c(2500, 2000, 1800, 1500, 3000)
coerce.check <- c(monster, atk)
print(coerce.check)
typeof(coerce.check)

# e) Explicit Type Conversion Using as.*() Functions

# Convert logical to numeric
monster_num <- as.numeric(monster)
print(monster_num)

# Convert numeric to character
atk_char <- as.character(atk)
print(atk_char)

# Convert character to factor
yugioh_factor <- as.factor(yugioh)
print(yugioh_factor)

# Convert factor back to character
yugioh_back <- as.character(yugioh_factor)
print(yugioh_back)
