# Q6.) Write an R Script to find subset of dataset by using subset()

employee <- data.frame(
  EmpID = c(101,102,103,104),
  Name = c("Rahul","Riya","Amit","Sneha"),
  Department = c("HR","IT","Sales","IT"),
  Salary = c(35000,50000,28000,60000)
)

print(employee)

high_salary <- subset(employee , Salary > 30000)
print(high_salary)

# Select only specific column
result <- subset(employee , select = c(Name,Salary))
print(result)

# Use both condition and select column
result_data <- subset(employee , Salary > 30000, select = c(Name,Salary))
print(result_data)