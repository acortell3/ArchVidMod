

#### ARCHVIDMOD ####
#### CODE FOR VIDEO 10: Linear modelling I. #### 
#### First applications                     ####
#### Author: Alfredo Cortell-Nicolau

## Load data
df <- read.csv("pots.csv") ## With this function you can import .csv files
                           ## Files must be in the folder of your project. If they are not
                           ## you must change the route (directory) where the name of the
                           ## file is.

## We create our first model
dfm1 <- lm(width ~ length, df) ## Arguments are your response variable related to the covariables
                               ## and their dataframe
summary(m1) ## This shows the most important values for your output
            ## The three dots at the side of your values say that you can 'trust' this value
            ## The value estimate indicates the effect of your covariable on the response
            ## variable. We'll see the rest of parameters in the next video.
            ## Try to interpret the outputs for the rest of models.

plot(y=width,x=length, main = "Linear Model 1", font.lab = 2, pch = 16, col = "orange")
abline(m1, col = "red", lwd = 1.5)

summary(m1)

## Second model. Note that we included two variables now.
m2 <- lm(width ~ length + diameter, df)
summary(m2)

## Third model, including interaction
m3 <- lm(width ~ length + diameter + length:diameter, df)
summary(m3)

## Fourth, relating only the weight. Is there correlation?
m4 <- lm(width ~ weight, df)
summary(m4)
