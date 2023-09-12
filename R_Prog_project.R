# 1. Install and load necessary packages
install.packages("ggplot2")
install.packages("colorspace")

library(ggplot2)
library(colorspace)

installed.packages("dplyr")
library(dplyr)

install.packages("tidyr")
library(tidyr)

# 2.To Load the Data:
df=read.csv("insurance.csv")
df

# 3.Exploring the Data:

# View the first few rows of the dataset
head(df)

# Check data types and missing values
str(df)

# Summary statistics for numeric columns
summary(df)

# 4. Data Cleaning and Preprocessing:
na.omit(data)

# 5. Data Visulization

# i)Scatter plot 1. - Using this we will analyze the relationship between bmi and charges

ggplot(df)
ggplot(df,aes(x=bmi,y=charges))
ggplot(df,aes(x=bmi,y=charges))+geom_point(color="purple") + labs(title = "BMI vs. Charges" )

# plot 2. - Age vs. BMI by smoker status
ggplot(df, aes(x = age, y = bmi, color = smoker)) + geom_point() +
labs(title = "Age vs. BMI by Smoker Status", x = "Age", y = "BMI")

# plot 3. - Age vs. Charges by smoker status
ggplot(df, aes(x = age, y = charges, color = smoker)) + geom_point() +
labs(title = "Age vs. Charges by Smoker Status", x = "Age", y = "Charges")


# ii) Histogram 
# Plot 1: Age distribution
ggplot(df,aes(x = age)) + geom_histogram(binwidth = 2, fill="red",color = "blue") +
labs(title = "Distribution of Age", x = "Age", y = "Count")

#Plot 2: BMI distribution
ggplot(df, aes(x = bmi)) + geom_histogram(binwidth = 2, fill = "green", color = "black") +
labs(title = "BMI Distribution", x = "BMI", y = "Frequency")

# Plot 3: Charges distribution
ggplot(df, aes(x = charges)) + geom_histogram(binwidth = 1000, fill = "purple", color = "black") +
labs(title = "Charges Distribution", x = "Charges", y = "Frequency")


# iii) Line plot:
ggplot(df,aes(x=bmi,y=charges))+geom_line(color="orange") + labs(title = "BMI vs.Charges" )

# iv) Line plot and Scatter plot
ggplot(df,aes(x=bmi,y=charges))+geom_line(color="red")+geom_point(color="green")+labs(title="BMI vs charges")

# v) plot 1. Box plot of charges by smoking status:
ggplot(df,aes(x = smoker,y = charges)) +geom_boxplot(fill="orange") +
labs(title = "Box Plot of Charges by Smoking Status", x = "Smoker", y = "Charges")

# plot 2. Region vs. Charges (box plot)
ggplot(df, aes(x = region, y = charges, fill = region)) + geom_boxplot(fill="purple") +
labs(title = "Region vs. Charges", x = "Region", y = "Charges")

# plot 3. Smoker vs. BMI (box plot)
ggplot(df, aes(x = smoker, y = bmi, fill = smoker)) + geom_boxplot(fill="blue") +
labs(title = "Smoker vs. BMI", x = "Smoker", y = "BMI")

# vi) Bar chart of Smoker status:
ggplot(df,aes(x=smoker))+geom_bar(fill="gold")+labs(title = "Distribution of Smoker Status",x="smokar",y="charges")

# vii)  Pairwise scatter plot for numeric variables
pairs(df[, c("age", "bmi", "charges")])








