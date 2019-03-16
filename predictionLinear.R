mtcars
women
?women
git config --global user.email "shiva.prasad@sjmsom.in"
git config --global user.name "shiv978"

names(women)
str(women)

model1 = lm(weight ~ height, data = women)
summary(model1)

setofheight = data.frame(height =c(63.5,66,68))
weightprediction = predict(model1, newdata = setofheight, type = 'response')
cbind(setofheight, weightprediction)

//here we cant do extrapolation, linear model only interpolation, multiple R-square= 0.991= 99.1% of weight is adrressed by height


so my model is 99.1% accurate, 99.1% variation I can capture from height- multiple R-squared for single variation


now for multiple predictions

head(mtcars)
str(mtcars)

model = lm(mpg ~ wt + hp + disp, data = mtcars)
summary(model)

str(mtcars)
model1 = lm(mpg ~ wt + hp, data=mtcars)
summary(model1)
