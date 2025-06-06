## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
rm(list=ls())
library(PLFD)
set.seed(2023)

rDim <- 45
cDim <- 35

n1 <- 80
n2 <- 75
n <- n1 + n2
y <- sample(1:2, n, TRUE, c(n1, n2))
x <- array(rnorm(rDim*cDim*n), c(rDim, cDim, n))

M1 <- matrix(0.0, rDim, cDim)
M1[1:10, 1:10] <- runif(100, 0.2, 0.8) * sample(-1:1, 100, TRUE, rep(1/3, 3))
x[, , y==1] <- sweep(x[, , y==1], 1:2, M1, '+')

n1Test <- 800
n2Test <- 900
yTest <- c(rep(1, n1Test), rep(2, n2Test))
xTest <- array(rnorm(rDim*cDim*(n1Test+n2Test)), c(rDim, cDim, n1Test+n2Test))
xTest[, , yTest==1] <- sweep(xTest[, , yTest==1], 1:2, M1, '+')
stopifnot( dim(xTest) == c(rDim, cDim, n1Test+n2Test) )

r0 <- c0 <- 5
plfd.model <- plfd(x, y, r0, c0)
print(plfd.model)

result <- predict(plfd.model, x=xTest, y=yTest)
print(result$mcr)

