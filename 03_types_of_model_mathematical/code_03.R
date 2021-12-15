

### EXAMPLE CODE FOR ARCHBIMOD VIDEOS (ARCHVIDMOD)

### Video lecture #3 Types of models: mathematical

### Alfredo Cortell-Nicolau

### 11th December, 2021

## 1. Seeing the data

## Create data
height <- c(175,181,168,177,165) ## Measured in centimeters
weight <- c(73,78,71,74,67) ## Measured in Kg

## Plot height
plot(height, pch = 16, col = "red", main = "Height for 5 people")

## Plot height + weight
plot(y = height, x = weight, pch = 16, col = "red", main = "Height and weight per person",
     ylab = "y = height", xlab = "x = weight")


## 2. Doing the model

## Make linear model
dat <- data.frame("height" = height, "weight" = weight) ## Combina data in a data frame
lm <- lm(height ~ weight, data = dat)


## 3. Plotting

## Plot linear relationship
plot(y = height, x = weight, pch = 16, col = "red", ylim = c(160,185), 
     main = "Linear relationship", ylab = "y = height", xlab = "x = weight")
abline(lm, col = "darkred", lwd = 1.5) ## Add linear relationship

## Add linear model per point
text(y = c(height[1]+1.5, height[2]+1.7, height[3]+1, height[4]+1.5, height[5]+2),
     x = c(weight[1], weight[2]-0.5, weight[3], weight[4], weight[5]+0.5),
     labels = rep("y = ax + b")) 

## Change formula by actual values
plot(y = height, x = weight, pch = 16, col = "red", ylim = c(160,185),
     main = "Linear relationship", ylab = "y = height", xlab = "x = weight")
abline(lm, col = "darkred", lwd = 1.5) ## Add linear relationship

## Add linear model per point
text(y = c(height[1], height[2]+1.7, height[3]-1.5, height[4]+1.5, height[5]-2),
     x = c(weight[1]-2, weight[2]-1.5, weight[3], weight[4], weight[5]+1.5),
     labels = c(paste0(height[1]," = 1.57(", weight[1],") + 59.18"),
                paste0(height[2]," = 1.57(", weight[2],") + 59.18"),
                paste0(height[3]," = 1.57(", weight[3],") + 59.18"),
                paste0(height[4]," = 1.57(", weight[4],") + 59.18"),
                paste0(height[5]," = 1.57(", weight[5],") + 59.18"))) 

## Plot beginning intercept (b)
plot(y = height, x = weight, pch = 16, col = "red", ylim = c(50,185), xlim = c(0,80),
     main = "Beginning of intercept", ylab = "y = height", xlab = "x = weight")
abline(lm, col = "darkred", lwd = 1.5) ## Add linear relationship

## End



