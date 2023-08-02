library(dplyr)
> df <- read.csv("C:/Users/pranay/Downloads/Cars (1).csv")
> #P(MPG > 38)
> P1 <- 1 - pnorm(38,mean(df$MPG),sd(df$MPG))
> print(P1)
  
> #P(MPG < 40)
> P2 <- pnorm(40,mean(df$MPG),sd(df$MPG))
> print(P2)
    
> #P(20<MPG<50)
> P3 <- pnorm(50,mean(df$MPG),sd(df$MPG)) - (1- pnorm(20,mean(df$MPG),sd(df$MPG)))
> print(P3)
      
> qqnorm(df$MPG, pch = 1, frame = FALSE)
> qqline(df$MPG, col = "steelblue", lwd = 2)
    
