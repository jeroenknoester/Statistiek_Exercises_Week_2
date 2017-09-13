x <- sample( 1:30, 98, replace = T )
x
x2 <- c(x, -5, 50)
x2
median(x) == median(x2)

IQR(x)
IQR(x2)

h <- mean(x) + IQR(x) * 1.5
l <- mean(x) - IQR(x) * 1.5
h
l
# Check if there is any number in x that is higher then h or lower then l(the highest and lowest boundry)
x[x > h]
x[x < l]

# Same for x2
h2 <- mean(x2) + IQR(x2) * 1.5
l2 <- mean(x2) - IQR(x2) * 1.5
x2[x2 > h2]
x2[x2 < l2]

# Create boxplot
boxplot(x, x2)
# Shows the outliner +50 but not the outliner -5

# show the standard deviation of both variables
sd(x)
sd(x2)

library(ISwR)
attach(eba1977)
summary(eba1977)
mean(cases)
median(cases)
length(cases)
boxplot(cases, main="hello")
boxplot(cases ~ city)

# With just one R command, compute the average of cases for each of the four cities.
tapply(cases, city, FUN = mean)
tapply(cases, age, FUN = mean)