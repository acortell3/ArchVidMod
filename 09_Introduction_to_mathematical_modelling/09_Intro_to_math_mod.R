

#### ARCHVIDMOD ####
#### CODE FOR VIDEO 9: Introduction to mathematical modelling. #### 
#### Conditions of applicability and common tests              ####
#### Author: Alfredo Cortell-Nicolau

#### WE GENERATE SOME DISTRIBUTIONS

## The following commands create values according to the specified distributions
## Explore rnorm, dnorm, pnorm and qnorm and they vary to be applied to different
## distributions. In order to do this use

?rnorm ## Quotation mark followed by the function, gives you help on that function

## Symmetric distributions
n_dist <- rnorm(5000,0,1) ## a normal distribution with mean = 0 and variance = 1. This distribution is always symmetric
b_dist_s <- rbeta(5000,3,3) ## a symmetric beta distribution (the parameters alpha = 3 and beta = 3 make is symmetric)

## We can plot it with this function
#par(mfrow = c(1,2)) ## This puts the following two plots together
curve(dnorm, -3.5, 3.5, lwd = 2, col = "aquamarine4", ylab = "", main = "Normal distribution (0,1)")
curve(dbeta(x,3,3), lwd = 2, col = "aquamarine4", ylab = "", main = "Beta distribution (3,3)")

## We find if these distributions are skewed. We need the package e1071 for this.
install.packages("e1071") ## Install it
library(e1071) ## We load it

## Now, find the skewness
## If values are close to 0, there is no skewness. 
## If values differ from 0 and are negative, the distribution is skewed to the left
## If values differ from 0 and are positive, the distribution is skewed to the right

skewness(n_dist) ## Is not skewed 
skewness(b_dist_s) ## Is not skewed 

## Non-symmetric distributions
b_dist_ns <- rbeta(5000,3,10) ## With these parameters, the beta distribution is not symmetric
g_dist_ns <- rgamma(5000,2,2) ## With these parameters, the gamma distribution is not symmetric but, like the beta, it could be

curve(dbeta(x,3,10), lwd = 2, col = "aquamarine4", ylab = "", main = "Beta distribution (3,10)")
curve(dgamma(x,2,2), xlim = c(0,5), lwd = 2, col = "aquamarine4", ylab = "", main = "Gamma distribution (2,2)")

## Compute skewness
skewness(b_dist_ns) ## Skewed to the right 
skewness(g_dist_ns) ## Skewed to the right

## Different kurtosis

## Plots
curve(dbeta(x,3,10), ylab = "", main = "Different levels of kurtosis and skewness", 
      col = "gold", lwd = 1.5)
curve(dbeta(x,3,9), add = TRUE, col = "goldenrod1", lwd = 1.5)
curve(dbeta(x,3,8), add = TRUE, col = "darkgoldenrod3", lwd = 1.5)
curve(dbeta(x,3,7), add = TRUE, col = "orange", lwd = 1.5)
curve(dbeta(x,3,6), add = TRUE, col = "orange3", lwd = 1.5)
curve(dbeta(x,3,5), add = TRUE, col = "orangered", lwd = 1.5)
curve(dbeta(x,3,4), add = TRUE, col = "orangered4", lwd = 1.5)
curve(dbeta(x,3,3), add = TRUE, col = "red4", lwd = 1.5)

## Computations
## If values do not differ from 0, the distribution is mesokurtic (cool!)
## If values > 1, the distribution is leptokurtic (too peaky!!)
## If values < 1, the distribution is platykurtic (too spread!)
kurtosis(n_dist) # mesokurtic
kurtosis(b_dist_s) # mesokurtic
kurtosis(b_dist_ns) # mesokurtic
kurtosis(g_dist_ns) # leptokurtic

### CHECK THE ASSUMPTIONS

## Check if our data is normal with the Shapiro-Wilk test
## Look at the results. If p-value is bigger than 0.05, your data is normal, otherwise it is not

shapiro.test(n_dist) ## Is normal
shapiro.test(b_dist_s) ## Is not normal
shapiro.test(b_dist_ns) ## Is not normal
shapiro.test(g_dist_ns) ## Is not normal

## Now check with kolmogorov-smirnoff test
## Here, as the second argument, you need to write the distribution you want to compare your
## distribution to. In this case, because we want to see if it's normal, its 'pnorm'

## You can interpret the p-values in the same wat that you did with Saphiro-Wil test

ks.test(n_dist,pnorm) ## Is normal
ks.test(b_dist_s,pnorm) ## Is not normal
ks.test(b_dist_ns,pnorm) ## Is not normal
ks.test(g_dist_ns,pnorm) ## Is not normal

## We will check homocedasticity when do our first models, on their residuals







