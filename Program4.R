# Q4.) Create multiple vectors, read all the vectors store in a data frame & perform all the operation & condition based on the vector
#  a. Assign a new name to the data frame
#  b. Attach the new column
#  a. Print the Output in the new column based on some conditions

rollno <- c(1,2,3,4,5,6)
name <- c("Krishna","Rudra","Fenil","Hetvi","Himani","Vishwa")
marks <- c(70,60,50,65,70,49)

student_data <- data.frame(rollno,name,marks)
print(student_data)

student <- student_data
student$result <- ifelse(student$marks >= 50 , "Pass" , "Fail")

print(student)