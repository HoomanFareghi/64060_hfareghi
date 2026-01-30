#1. Download a dataset from the web. You may use any source, but specify the source in
#your code. Also ensure that the data has a mix of quantitative and qualitative
#(categorical) variables.
 
#data source: https://practicedatasets.online/sales-dataset-for-analysis #Selected Dataset Type: 
#Customer Information #Number of Records: 5000
  
#2. Import the dataset into R

#imported

library(readxl)
data<- read_excel("customer_info (1).xlsx")

#3. Print out descriptive statistics for a selection of quantitative and categorical variables.

#descriptive statistics for a selection of quantitative variables.

summary(data$Age)
summary(data$`Total Spend ($)`)
summary(data$`Average Purchase Amount ($)`)

#descriptive statistics for categorical variables.

table(data$Gender)
table(data$Region)
table(data$`Preferred Payment Method`)

#4. Transform at least one variable. It doesn't matter what the transformation is.

data$age_group <- cut(data$Age, breaks = c(-Inf , 29, 55, Inf) , labels = c("young(under30)" , "adult(30-55)", "senior(+55)"))
table(data$age_group)

data$spending_level <- cut(data$`Total Spend ($)`, breaks = c(-Inf, 2000, 10000, Inf), labels= c("low","medium","high"))
table(data$spending_level)

#5. Plot at least one quantitative variable, and one scatterplot.

#Plot at least one quantitative variable

hist(data$Age, main = "plot of age", xlab = "age" , col = "blue")
hist(data$`Purchase History (count)`, main = "plot of purchase history", xlab = "purchase history" , col = "purple")
hist(data$`Purchase History (count)`, breaks = 24 , main = "plot of purchase history", xlab = "purchase history" , col = "gray")
hist(data$Age, breaks = 24 , main = "plot of age", xlab = "age" , col = "lightgreen")


#one scatterplot

plot(data$Age, data$`Total Spend ($)`, main = "age vs total spending", xlab ="age", ylab = "total spending" , col= "black")
plot(data$`Purchase History (count)`, data$`Total Spend ($)`,  main = "purchase history(count) vs total spending", xlab ="purchase history (count)", ylab = "total spending" , col= "darkgreen")
plot(data$Age, data$`Average Purchase Amount ($)`, main = "age vs Average Purchase Amount ($)", xlab ="age", ylab = "Average Purchase Amount ($)" , col= "lightblue")


#6. Upload your R program, and any associated datafiles to Canvas.

#uploaded

#7. Do not upload your program to your GitHub account until the deadline of the
#assignment is due. After the due date, upload your R program, and any associated
#datafiles to your git account. Remember to create a separate repository for this class.

# this is my github account and repository for this class: https://github.com/HoomanFareghi/64060_hfareghi


