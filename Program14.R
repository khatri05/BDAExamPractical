# Q14.) Reading XML dataset in R

library(xml2)

doc <- read_xml("C:/Users/admin/Desktop/BDAExamPractical/Dataset.xml")
print(doc)

students <- xml_find_all(doc,"student")
print(students)

id <- xml_text(xml_find_all(students,"id"))
print(id)

name <- xml_text(xml_find_all(students,"name"))
print(name)

marks <- xml_text(xml_find_all(students,"marks"))
print(marks)

marks <- as.numeric(marks)
print(marks)

student_data <- data.frame(id,name,marks)
print(student_data)