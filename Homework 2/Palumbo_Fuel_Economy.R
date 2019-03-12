fuel = read.csv("/home/techfield/Documents/Class Work/Homework/Homework 2/fuel_economy.csv",header = TRUE)


# Build a linear regression model which uses the number of cylinders 
#in the engine and the displacement volume to predict highway fuel economy


#Using lm
lin = lm(hwy~cyl+displ,data=fuel)
summary(lin)
#Using what we did in class

ones= rep(1,nrow(234))
X = cbind(ones,fuel$cyl,fuel$displ)


w = solve(X, fuel$hwy)

y_hat = X.dot(w)

R2 = 1 - np.sum((y-y_hat)**2)/np.sum((y-y.mean())**2)  # Need to go over this stuff again
print(R2)
