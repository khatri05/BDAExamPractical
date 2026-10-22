# Q10.) Create two excel files that stores the details of employee's personal details & official details, based on the joining date & the increment given to the employee to predict the list of employees whether a promotion can be given or not

library(openxlsx)
personal <- data.frame(
  Emp_ID = c(101,102,103,104,105),
  Name = c("Krishna","Jash","Bhavya","Rudra","Krisha"),
  Age = c(35,25,28,30,37),
  Joining_Year = c(2017,2019,2020,2022,2018)
)

write.xlsx(personal,"C:/Users/admin/Desktop/BDAExamPractical/personal.xlsx",overwrite = TRUE)
print("Personal Details Excel File Created Successfully")

official <- data.frame(
  Emp_ID = c(101,102,103,104,105),
  Department = c("IT","HR","Finance","IT","Marketing"),
  Salary = c(30000,35000,45000,32000,50000),
  Increment = c(12,8,15,5,18)
)

write.xlsx(official,"C:/Users/admin/Desktop/BDAExamPractical/official.xlsx",overwrite = TRUE)
print("Official Details Excel File Created Successfully")

personal <- read.xlsx("C:/Users/admin/Desktop/BDAExamPractical/personal.xlsx")
official <- read.xlsx("C:/Users/admin/Desktop/BDAExamPractical/official.xlsx")

# Merge Both Files with the help of merge()
employee <- merge(personal,official,by = "Emp_ID")

# Calculate Experience
employee$Experience <- 2026 - employee$Joining_Year
employee$Promotion <- ifelse(
  employee$Experience >= 5,
  "Yes",
  "No"
)

print(employee)

write.xlsx(employee,"C:/Users/admin/Desktop/BDAExamPractical/Promotion_Prediction.xlsx",overwrite = TRUE)
print("Promotion Prediction Excel File Created Successfully")