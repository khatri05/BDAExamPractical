# Q19.) Create an excel file which stores the result details of the students of MCA. Predict the next year result based on the following criteria(i.e., theory assignment,practical assignment,class performance,attendance,etc). Plot the scatter plot of the performance of the student

library(openxlsx)
students <- data.frame(
  student_ID = c("MCA01","MCA02","MCA03","MCA04","MCA05"),
  Theory_Assignment = c(75,80,70,90,70),
  Practical_Assignment = c(80,85,70,92,75),
  Class_Performance = c(78,82,68,90,72),
  Attendence = c(85,90,75,95,80),
  Current_Result = c(78,84,68,92,74)
)

print(students)

write.xlsx(students,"C:/Users/admin/Desktop/BDAExamPractical/MCA_Student_Result.xlsx")
model <- lm(Current_Result ~ Theory_Assignment + Practical_Assignment + Class_Performance + Attendence , data = students)

students$Predicted_Next_Year_Result <- predict(model,students)
print(students)

write.xlsx(students,"C:/Users/admin/Desktop/BDAExamPractical/MCA_Student_Result_Prediction.xlsx")
plot(
  students$Current_Result,
  students$Predicted_Next_Year_Result,
  main = "Performance of MCA Students",
  xlab = "Current Year Result",
  ylab = "Predicted Next year Result",
  pch = 19
)