# Q20.) Find the correlation matrix

data <- data.frame(
  math = c(70,80,90,60,85),
  science = c(75,85,95,65,88),
  English = c(68,78,92,58,82)
)

correlation_matrix <- cor(data)

print(correlation_matrix)