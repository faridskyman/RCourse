# tutorials from http://www.r-bloggers.com/simple-linear-regression/
"Suppose you want to obtain a linear relationship between weight (kg) and height (cm) of 10 subjects.
  Height: 175, 168, 170, 171, 169, 165, 165, 160, 180, 186
  Weight: 80, 68, 72, 75, 70, 65, 62, 60, 85, 90
  
  The first problem is to decide what is the dependent variable Y and what is the independent variable X. 

  In our case: 

  * (x) - 'weight' is independent variable, not affected by an error (as its an inputed var)
  * (y) - 'height' is dependent variable, is affected by error, as its a predicted/ calculated var

  problem is to find a linear relationship (formula) that allows us to calculate the height, 
    known as the weight of an individual. 
  
  The simplest formula is that of a broad line of type Y = a + bX. 
    The simple regression line in R is calculated as follows:"


# Input data
height = c(175, 168, 170, 171, 169, 165, 165, 160, 180, 186)
weight = c(80, 68, 72, 75, 70, 65, 62, 60, 85, 90)

#  you declare first the dependent variable, and after the independent variable (or variables).
fit <- lm(formula = height ~ weight, x=TRUE, y=TRUE)

summary(fit)

fit

# flots scatter based on the data
plot(weight, height)
# draws the regresison line
abline(fit)
