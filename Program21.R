# Q21.) Plot the correlation plot on the dataset & visualize giving an overview of relationship among data on iris data.

library(corrplot)

data(iris)
iris_num <- iris[,1:4]
cor_matrix <- cor(iris_num)
corrplot(cor_matrix,
         method = "circle",
         type = "upper",
         tl.col = "black",
         tl.srt = 45)