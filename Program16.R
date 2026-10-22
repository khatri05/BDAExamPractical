# Q16.) Find the data distribution using box & scatter plot
library(ggplot2)

# a. Box Plot
data(mtcars)
boxplot(mtcars$mpg,
        main = "Box plot of mileage",
        ylab = "Miles per Gallon",
        col = "lightblue")

# b. Scatter Plot
data(mtcars)

p <- ggplot(mtcars,aes(x = wt,y = mpg))+
  geom_point()+
  labs(
    title = "Weight VS Mileage",
    xlab = "Weight",
    ylab = "Mileage Per Gallon"
  )

print(p)