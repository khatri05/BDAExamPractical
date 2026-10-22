# Q3.) Write an R script to create R object for calculator application & save in a specified loaction in disk

num1 <- 30
num2 <- 20

addition <- num1 + num2
subtraction <- num1 - num2
multiplication <- num1 * num2
division <- num1 / num2

print(paste("Addition = ",addition))
print(paste("Subtraction = ",subtraction))
print(paste("Multiplication = ",multiplication))
print(paste("Division = ",division))

save(num1 , num2 , addition , subtraction , multiplication , division,
     file = "C:/Users/admin/Desktop/BDAExamPractical/Program3.RData")

print("Object saved successfully")