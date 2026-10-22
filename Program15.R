# Q15.) Connecting monogoDB with R

library(mongolite)

employee <- mongo(
  collection = "Employee",
  db = "EmployeeDB",
  url = "mongodb://localhost:27017"
)

data <- data.frame(
  emp_id = c(101,102,103,104),
  name = c("Divya","Farhan","Rahul","Riya"),
  department = c("IT","HR","Finance","IT"),
  salary = c(50000,45000,55000,60000)
)

employee$insert(data)
print("Employee Data inserted successfully")
data <- employee$find()
print(data)

employee$update(
  query = '{"emp_id":101}',
  update = '{"$set":{"salary":55000}}'
)

print("Employee Updated Successfully")
data <- employee$find()
print(data)

employee$remove('{"emp_id":104}')
print("Employee Deleted Successfully")
data <- employee$find()
print(data)