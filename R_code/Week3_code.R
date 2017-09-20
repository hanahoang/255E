# Week 3

library(readxl)

setwd("C:/Users/Hana/255E")
df= read_excel(path= "data/Reinhart-Rogoff.xlsx", na='n.a.')

mean(df$`90 or above`, na.rm= TRUE)

mean(df$`90 or above`[1:15], na.rm= TRUE) # how hard is it to mess up in R

#####################################################################

df = read.csv("data/Messy_means2.csv")

dotchart(df$Value) #to see if the data is good

# dot chart shows one very small value and one very large value that are suspected.
# we will remove those 2 values
min(df$Value) #to find the lowest outliner value

# function to get row index fact
which.min(df$Value)

df[48, "Value"] = NA# set a trouble value as NA
df[which.min[df$Value, na.rm= TRUE], 'Value']= NA # set to ignore NA

#safer way to use even if the file is changed and the row shisted 
df[which.max(df$Value, na.rm= TRUE), 'Value']= NA # to fond thehighest outliner value ad set it as NA as the same time

#new dot chart that represent the new data point 
dotchart(df$Value)

# get the 'mean' row in the column "Type"
df$Type == "Mean"
df$Value[df$Type == "Mean"] #entire column of 'value' with the subset of row 'Mean'
# or
df[df$Type == "Mean", "Value"]
# or
df[df$Type == "Mean", 3] # not so safe if the df is changed and additional column is added

mymean = df[df$Type == "Mean", "Value"]
mean(mymean)

######################################################################################

df = read_excel("data/Heating_trial_info.xlsx")
str(df)

# convert column 3 to 8 into factor
df[, 3:8] = lapply(df[, 3:8], factor)

# use levels() to see all levels of a categorical factor
levels(df$TCchannel)
levels(df$MusselTagID) # uper and lowe cases in catergories can cause problem, they are counted as different factors
levels(df$`Gaping?`) #`` for ame with special characters or space

# use summary() to show counts of factor columns
summary(df)
summary(df$MusselTagID)

# summary() used on mumeric column shows quaries 
summary(df$TrialNumber)

# use table() to show counts of categorical variable in a column 
table(df$AliveDead)
table(df$TCLocation)

# use xtabs() to make contigency table of counts of factors
xtabs( ~AliveDead + MusselTagID, data = df)

# for 3 columns, you get a 3D table
xtabs( ~AliveDead + MusselTagID + TCLocation, data = df)

#################################################################################

# read in one SVLCallisaurus file
svl1 = read.csv('data/SVLCallisaurus.csv')
str(svl1)

# read in the other
svl2 = read.csv('data/SVLCallisaurus2.csv')
str(svl2)

#both data frame svl1 and svl2 share the same column titles an we wan to put them together

svlAll = rbind(svl1, svl2) # the column must match exactly (name and number)

# rename column in R
colnames(svl1) = c('Animal.ID', 'Sex', 'SVL.mm')
colnames(svl2) = c('Animal.ID', 'Sex', 'SVL.mm')

#re run svlAll
svlAll = rbind(svl1, svl2)

# save joined files as a new cvs file
write.csv(x = svlAll, file = 'data/SVLjoined.csv', row.names = FALSE)

#############################################################################

boxplot(SVL.mm~Sex, data = svlAll, xlab = 'Sex', ylab = 'Snout-Vent lenght, mm')
# or
boxplot(y~x, data = svlAll,xlab = 'Sex', ylab = 'Snout-Vent lenght, mm' )
# or 
boxplot(x = svlAll$Sex, y = svlAll$SVL.mm, xlab = 'Sex', ylab = 'Snout-Vent lenght, mm')

########################################################
 
df = read.csv('data/california-state-university-2015.csv')
levels(df$Job.Title)

# RESEARCH TECHNICIAN I
# RESEARCH TECHNICIAN II
# RESEARCH TECHNICIAN III
# use dfsubset = rbind() to combind 
# dfsub = droplevels(dfsub)

# change order of the factor 
levels(svl1$Sex)

svl1$Sex = factor(svl1$Sex, levels= c('M', 'F')) # the spelling must match exactly 

boxplot(Snout.Vent.Length..mm.~Sex, data = svl1, names = c('Males', 'Female')) # the name must match the factor level

# use aggregate() to calculate mean for each sub set
aggregate(Snout.Vent.Length..mm.~Sex, data = svl1, FUN = mean)

jobs = levels(df$Job.Title)

jobs[grep(pattern = " CHAN", x= jobs)]

grep(pattern = " CHAN", x= jobs)
