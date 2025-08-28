# Set working directory (optional if using full path)
setwd("C:/Users/santh/Downloads/heart_disease")

# Load dataset
df <- read.csv("heart.csv")
df

# 1. Compute mean, median, variance for 'age'
mean_age <- mean(df$age, na.rm = TRUE)
print(paste("Mean Age:", mean_age))

median_age <- median(df$age, na.rm = TRUE)
print(paste("Median Age:", median_age))

variance_age <- var(df$age, na.rm = TRUE)
print(paste("Variance of Age:", variance_age))

# 2. Install ggplot2 if not already installed
if(!require(ggplot2)) install.packages("ggplot2")

# Load ggplot2
library(ggplot2)

# Create bar chart (Chest Pain Type)
ggplot(df, aes(x=factor(cp))) +
  geom_bar(fill="steelblue") +
  labs(title="Distribution of Chest Pain Types", 
       x="Chest Pain Type", 
       y="Count")
