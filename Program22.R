# Q22.) Analysis of covariance: variance(ANOVA) if data have categorical variables on iris data

data(iris)
result <- aov(Sepal.Length ~ Species,
              data = iris)

print(summary(result))