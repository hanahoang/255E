x = 2
X <- 2

x

# add 1 to x
x + 1

# multiply x by 10
x * 10

# suntract 1 from x
x - 1

# divide x by 2
x / 2

# define a new variable
myvariable <- 10

# add 20 to my variable 
myvariable + 20

# assign a new vector
myvector <- c(1, 20, 300, 40, 5, 0.6, 7.1, 8.23, 9.45, 10.678)

# print the content of myvector
myvector

# obtain 3rd entry in myvector
myvector[3]

# obtain 7 to 10 entries
myvector[7:10]

# assign the 11th entry in myvector
myvector[11] <- 20

# obtain the 12th entry
myvector[12]

# show the 1st 6 values
head(myvector)

# minimum value
min(myvector)

# maximun value
max(myvector)

# mean value
mean(myvector)

# standard deviation 
sd(myvector)

# import data frame
df <- read.csv(file.choose())

# looking at df using head function
head(df)

# look at the structure of the variable 
str(df)

# obtain value of the 2nd row and 3rd column
df[2, 3]
df[2, "Snout.Vent.Length..mm."]

# obtain row 2 of all column 
df[2, ]

# obtain all row in column 3
df[ , 3]

# obtain the Sex column
df$Sex

# obtain row 2 in Sex column
df$Sex[2]

