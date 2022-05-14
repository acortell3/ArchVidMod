

#### ARCHVIDMOD ####
#### CODE FOR VIDEO 8: Key concepts IV. What is even a distribution? ####
#### Author: Alfredo Cortell-Nicolau

#### DISCRETE DISTRIBUTIONS

## Generate probabilty values (must add up to 1)
A <- 0.20
B <- 0.42
AB <- 0.12
C <- 0.26

# A+B+AB+C = 1

## Plot probability function
P_fun <- c("A" = A, 
           "B" = B,
           "AB" = AB,
           "C" = C)

barplot(P_fun, main = "Probability function")

## Plot distribution function
D_fun <- c("A" = A,
           "B" = B+A,
           "AB" = A+B+AB,
           "C" = A+B+AB+C)

barplot(D_fun, main = "Distribution function")

#### CONTINUOUS DISTRIBUTIONS

## Generate data for normal distribution with mean = 0 and sd = 1
seq<-seq(-4,4,.01)
den<-dnorm(seq,0,1)
cum<-pnorm(seq,0,1)

## Plot density function
plot(seq, den, col="darkgreen", xlab="", ylab="Density", 
     type="l",lwd=2, cex=2, main="Density function")

## Plot distribution function
plot(seq, cum, col="darkgreen", xlab="", ylab="Cumulative Probability",
     type="l",lwd=2, cex=2, main="Distribution function")

#### GAUSSIAN (or normal) DISTRIBUTION
## With mean = 0 and sd = 1
seq01<-seq(-4,4,.01) ## It's the same as before
den01<-dnorm(seq01,0,1)
cum01<-pnorm(seq01,0,1)

# Plot 
plot(seq01, den01, col="darkorange", xlab="", ylab="Density", 
     type="l",lwd=2, cex=2, main="Gaussian distribution (0,1)")
abline(v = 0, col = "red", lwd = 2)

## With mean = 5 and sd = 5
seq55<-seq(-15,25,.01) 
den55<-dnorm(seq55,5,5)
cum55<-pnorm(seq55,5,5)

# Plot 
plot(seq55, den55, col="darkorange", xlab="", ylab="Density", 
     type="l",lwd=2, cex=2, main="Gaussian distribution (5,5)")
abline(v = 5, col = "red", lwd = 2)


