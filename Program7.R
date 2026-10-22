# Q7.) Retrieve the data from the csv file
#  a. Normalize the data
#  b. Represent in a graphical form
#  c. Specify x-axis, y-axis, x-limit, y-limit, include color to a graph change the plot style

student <- read.csv("C:/Users/admin/Desktop/BDAExamPractical/student.csv")
print(student)

student$Normalized_Marks <- (student$Marks - min(student$Marks)) / (max(student$Marks) - min(student$Marks))
print(student)

plot(student$RollNo,
     student$Normalized_Marks,
     xlab = "Roll Number",
     ylab = "Normalized Marks",
     xlim = c(100,105),
     ylim = c(0,7),
     col = "blue",
     pch = 19,
     type = "l",
     main = "Normalized Student Marks")

print(student)