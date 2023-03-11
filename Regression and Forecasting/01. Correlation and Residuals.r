setwd("/Users/totagopi/Desktop/spring 23") # Change path to where you save data file on your computer

# Example: Home size and price; data
real_estate=read.csv("real_estate.csv")

dim(real_estate); head(real_estate)

# Scatterplot of selling price against living area
plot(Price~Living.Area,data=real_estate,xlab="Living Area (in square feet)",ylab="Price (in $)")

# Correlation coefficient between selling price and living area
(cor.18=cor(real_estate$Price,real_estate$Living.Area))

# Correlation table
cor(real_estate[,c(1,8,9,10,11)])

# LS line
m<-lm(Price~Living.Area,data=real_estate)
summary(m)
m$coefficients # Regression coefficients
abline(m,col="red")

# Predicted (or fitted) values
m$fitted.values

# Residuals
m$residuals

# Prediction
predict(m,data.frame(Living.Area=2000))

# Checking the Model
plot(m$fitted.values,m$residuals,xlab="Predicted values",ylab="Residuals")
cor(m$residuals,m$fitted.values)
plot(real_estate$Living.Area,m$residuals,xlab="Living Area",ylab="Residuals")
cor(m$residuals,real_estate$Living.Area)
cor(m$residuals,real_estate$Price)

# Variation in residuals
sd(real_estate$Price);sd(m$residuals)
boxplot(real_estate$Price,m$residuals,col="lightgray",main="",names=c("y values","residuals"))

# Coefficient of determination
summary(m)$r.squared

# Fitting multiple linear regression model
m2<-lm(Price~Living.Area+Lot.Size,data=real_estate)
summary(m2)
predict(m2,data.frame(Living.Area=2000,Lot.Size=0.5))


