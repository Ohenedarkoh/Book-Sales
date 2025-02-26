library(tidyverse)

#summary of the dataset
summary(Books_Data_Clean)
glimpse(Books_Data_Clean)


#finding missing values and inconsistent labels
missing_values<- colSums(is.na(Books_Data_Clean))
print(missing_values)

colnames(Books_Data_Clean)
## converting categorical variable to numerical values
Books_Data_Clean$`gross sales`<- as.numeric(Books_Data_Clean$`gross sales`)  



# View the transformed dataset
print(Books_Data_Clean)

#top_performing movies using book average ratings
top_books<-Books_Data_Clean[order(Books_Data_Clean$`Book_average_rating`),]
print(top_books$`Book_average_rating`)

#the book with the highest rating 
highest_rated_book <- Books_Data_Clean[Books_Data_Clean$`Book_average_rating` == 4.35, "Book Name"]

# Print the result
print(highest_rated_book)


#summarising findings

sales_rank<- Books_Data_Clean[order(Books_Data_Clean$`sales rank`),]
print(sales_rank)

units_sold<- Books_Data_Clean[order(Books_Data_Clean$`units sold`),]
print(units_sold)
