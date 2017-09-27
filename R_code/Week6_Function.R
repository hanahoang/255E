# showing how to store function in their own scipt file

mySE <- function(x){
  # Assume the input x is a vector of numbers
  # 1st calculate the variance
  myvar = var(x)
  # then calculate the number value in the sample
  myn = length(x)
  # next calculate the square root of the variance divide by the sample size 
  mySE = sqrt(myvar/myn)
  # the value returned will be the last object created in the function in this case mySE
  mySE #repeating jus the last variable here will cause the result to printout when run
}