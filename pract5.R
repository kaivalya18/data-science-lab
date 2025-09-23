#a) Hint. Use the dim() function, the matrix() function, and cbind().
players <- c("dark","dark","dark","dark","dark",
             "light","light","light","light","light")

pieces <- c("king","queen","pawn","pawn","knight",
            "bishop","king","rook","pawn","pawn")

chess_matrix1 <- cbind(players, pieces)
dim(chess_matrix1)  
print(chess_matrix1)

#b)Can you think of a faster way to create this matrix? 
values <- c("dark","king",
            "dark","queen",
            "dark","pawn",
            "dark","pawn",
            "dark","knight",
            "light","bishop",
            "light","king",
            "light","rook",
            "light","pawn",
            "light","pawn")

chess_matrix2 <- matrix(values, ncol = 2, byrow = TRUE)
colnames(chess_matrix2) <- c("Player", "Piece")
print(chess_matrix2)


#c) Assign names to it in two different ways. 
# Way 1: colnames()
colnames(chess_matrix2) <- c("PlayerName", "PieceName")
chess_matrix2
# Way 2: dimnames()
dimnames(chess_matrix2) <- list(paste0("Row",1:10), c("color","type"))
chess_matrix2


#d) Would rbind() be practical?
#no as we need to add rows mannualy


#e) Can you think of a way to make adding a row to the matrix worthwhile?
chess_matrix2 <- rbind(chess_matrix1, "[11,]" = c("light", "rook"))
print(chess_matrix2)