# Q18.) Plot the histogram, bar chart & pie chart on sample sales data of 3 years.

years <- c(2023,2024,2025)
sales <- c(50000,65000,80000)

# 1. Histogram
hist(sales,
     main = "Histogram of sales",
     xlab = "Sales",
     ylab = "Frequency")

# 2. Bar Chart
barplot(sales,names.arg=years,
        main = "Sales for 3 years",
        xlab = "year",
        ylab = "Sales")

# 3. Pie Chart
pie(sales,
    labels = years,
    main = "Sales Distribution for 3 years")