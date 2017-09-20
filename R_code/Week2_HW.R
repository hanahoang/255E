
# code to import data using a relative path to /data/

# subset the data for a particular job title

# make a boxplot, with a proper y-axis label, title with HEAD COACH - 12 MONTH 
# Hana- HEAD COACH - 12 MONTH

# Objective: make a Box plot of Base Salary

# import data
# setwd("C:/Users/Hana/255E")

df = read.csv("./data/california-state-university-2015.csv")

boxplot(x = df$Base.Pay[df$Job.Title == "HEAD COACH - 12 MONTH"],
        xlab = "HEAD COACH - 12 MONTH",
        ylab = "Base Salary",
        col = "paleturquoise1",
        main = "Base Salary for Head Coach - 12 Months")

