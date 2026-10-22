# Q11.) Create an Excel file to store the details of the patient's health details.
#   a.) Predict whether the user is healthy or not based on the health prediction
#   b.) Prediction should be done based on the normal values(i.e., BMI,Weight,BP,Cholesterol,etc)

library(openxlsx)
patient <- data.frame(
  patient_id = c(101,102,103,104,105),
  Name = c("ABC","DEF","GHI","JKL","MNO"),
  Age = c(25,40,35,50,48),
  Weight = c(68,85,72,90,60),
  Height = c(1.70,1.60,1.75,1.65,1.68),
  Systolic_BP = c(118,145,125,155,110),
  Diastolic_BP = c(78,95,82,98,75),
  Cholesterol = c(180,250,190,270,170)
)
print(patient)

patient$BMI <- patient$Weight / patient$Height^2
print(patient)

patient$Health_Status <- ifelse(
  patient$BMI >= 18.5 &
    patient$BMI <= 24.9 &
    patient$Systolic_BP < 120 &
    patient$Diastolic_BP < 120 &
    patient$Cholesterol < 200,
  "Healthy",
  "Need Medical Checkup"
)

print(patient)
write.xlsx(patient,"C:/Users/admin/Desktop/BDAExamPractical/Patient_Health_Report.xlsx",overwrite = TRUE)
print("Excel File Created Successfully")