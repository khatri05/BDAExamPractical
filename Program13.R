# Q13.) Reading Excel Data sheet in R

library(readxl)
scopus <- read_excel("C:/Users/admin/Desktop/BDAExamPractical/Research_Publications.xlsx",sheet="Scopus")
wos <- read_excel("C:/Users/admin/Desktop/BDAExamPractical/Research_Publications.xlsx",sheet="Wos")
ieee <- read_excel("C:/Users/admin/Desktop/BDAExamPractical/Research_Publications.xlsx",sheet="IEEE")

research <- rbind(scopus,wos,ieee)
research$Total_Authors <- sapply(strsplit(research$Author_Names,","),length)
print(research)

cat("Total Research Papers: ",nrow(research),"\n")
cat("Total Citations: ",sum(research$Citiaitons),"\n")
cat("Average Authors: ",mean(research$Total_Authors),"\n")

highest <- research[which.max(research$Citiaitons),]
print(highest)
