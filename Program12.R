# Q12.) Reading different types of data set from web & disk and writing in file in specific disk location.

repeat{
  cat("\n BANK MANAGEMENT SYSTEM")
  cat("\n1. Read Bank CSV File From Disk")
  cat("\n2. Read Bank TXT File From Disk")
  cat("\n3. Read Bank CSV File From Web")
  cat("\n4. Write Bank CSV Report To Disk")
  cat("\n5. Display summary of Bank Data")
  cat("\n6. Display First 3 Records")
  cat("\n7. Exit")
  
  choice <- as.integer(readline("\nEnter Your choice: "))
  switch(choice,
         {
           bank <- read.csv("C:/Users/admin/Desktop/BDAExamPractical/Bank.csv")
           cat("\nBank CSV File \n")
           print(bank)
         },
         {
           bank <- read.table("C:/Users/admin/Desktop/BDAExamPractical/Bank.txt",header = TRUE)
           cat("\nBank TXT File \n")
           print(bank)
         },
         {
           url <- "https://github.com/datasets/country-list/blob/main/data.csv";
           country <- read.csv(url)
           cat("\nCSV File Read Successfully From Web\n")
           print(head(country))
         },
         {
           bank <- read.csv("C:/Users/admin/Desktop/BDAExamPractical/Bank.csv")
           write.csv(bank,"C:/Users/admin/Desktop/BDAExamPractical/Bank_Report.csv",row.names = FALSE)
           cat("\nBank Report Saved Successfully\n")
         },
         {
           bank <- read.csv("C:/Users/admin/Desktop/BDAExamPractical/Bank.csv")
           cat("\nSummary\n")
           print(Summary(bank))
         },
         {
           bank <- read.csv("C:/Users/admin/Desktop/BDAExamPractical/Bank.csv")
           cat("\n First Three Records \n")
           print(head(bank,3))
         },
         {
           cat("\nThank you...Visit Again\n")
           break
         },
         {
           cat("\nInvalid Choice")
         }
  )
}