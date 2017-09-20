# Week 3 HW

# upload the file to R
setwd("C:/Users/Hana/255E")
df = read.csv("data/california-state-university-2015.csv")

# see different level of Job Title
levels(df$Job.Title)

# REGISTERED NURSE I
RNI = df[df$Job.Title == "REGISTERED NURSE I", ]

# REGISTERED NURSE II
RNII = df[df$Job.Title == "REGISTERED NURSE II", ]

# REGISTERED NURSE III
RNIII = df[df$Job.Title == "REGISTERED NURSE III", ]


# combine the 3 subcatagories
RNall = rbind(RNI, RNII, RNIII) # could work if all the nurses has the same number of rows
RNall = droplevels(RNall)

# Boxplot for base salaries
boxplot(Base.Pay~Job.Title,
        data = RNall, xlab = 'Job Title', ylab = 'Base Salary',
        col = c("aquamarine", "turquoise", "palegreen2"),
        main = "Base Salary for Registered Nurse")

# Calculate mean salary
mean_salary = mean(c(RNI, RNII, RNIII))

# calculate mean salary for each sub set
aggregate(Base.Pay~Job.Title,
          data = RNall, FUN = mean)

# Print out mean_salary
mean_salary

#################################################################################



