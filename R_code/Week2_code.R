#week 2

#setting my working directory on this computer
setwd("C:/Users/Hana/255E/R_code/")
setwd("C:/Users/Hana/255E/data")
setwd("C:/Users/Hana/255E")

# figure out current working directory 
getwd()

# remove things from environment 
rm(df)
 
df <- read.csv("../data/SVLCallisaurus.csv")

# load xlsx add-on and open excel file
# whenever want a new package, use: 
#install.package('')
library(xlsx) # reload whenever start a new R section

ht <- read.xlsx("../data/Heating_trial_info.xlsx", sheetIndex = 1)

help(xlsx)

# find help for xlsx
?read.xlsx

# R won't understand "C:\Users\Hana\255E"
C:\Users\Hana\255E
# always use forward math "/"
# if want to use '\' has to use '\\'

C:/Users/Hana/255E

# import tab-delimited data file 
limp = read.table(file = 'data/LimpetRaspingRate.txt', header = TRUE,
                  sep= "\t") # "\t" = TAB # " " = SPACE between column

boxplot(limp$Growth)

df <- read.table("data/SVLCallisaurus.csv", header = TRUE,
                 sep= ",")

# read.csv is the short cut of read.table

# Fixed width format
# waves = read.fwf("data/CDIP_158_201702.txt",...) refer to ?read.fwf

test = readLines(con= "data/CDIP_158_201702.txt")

###############plotting
dotchart(limp$Temperature)
dotchart(limp$Temperature, group = limp$Species,
         xlab = "Temperature, C")

limp$Species == 'pelta'

limp$Temperature[limp$Species == 'pelta']

limp$RaspRate[limp$Species == 'pelta']

limp$Temperature[limp$Species == 'scabra']

limp$RaspRate[limp$Species == 'scabra']

# scatter plot for pelta
plot(x= limp$Temperature[limp$Species == 'pelta'], 
     y = limp$RaspRate[limp$Species == 'pelta'], 
     xlab = "Temperature, C",
     ylab = "Rasping Rate, rasps/minutes",
     col = rgb(1, 0, 0), pch= 17,
     xlim= range(limp$Temperature),
     ylim= range(limp$RaspRate))
points(x= limp$Temperature[limp$Species == 'scabra'], 
      y = limp$RaspRate[limp$Species == 'scabra'],
      col= "purple", pch = 19)
legend(x = 7, y = 30, legend= c("pelta", "Scabra"),
       pch = c(2, 19),
       col = c("red", "purple"),
       title = "species") # order is absolutely important in legend

# color name use function colors() can type in the number of the color
# rgb () to mix color rgb (0, 1, 2, 0.5) last value is transparency
# pch show shape of point ?pch




