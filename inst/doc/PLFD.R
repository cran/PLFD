## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
rm(list=ls())
library(PLFD)
set.seed(2021)

n1 <- n2 <- 75
rDim <- cDim <- 60
n1Test <- n2Test <- 1000

M1 <- matrix(0.0, rDim, cDim)
M1[1:10, 1:10] <- matrix(
  runif(10*10, 0.2, 0.8)*sample(-1:1, 10*10, TRUE, rep(1/3, 3)),
  nrow=10
)

x1 <- sweep(array(rnorm(rDim*cDim*n1), c(rDim, cDim, n1)), 1:2, M1, '+')
x2 <- array(rnorm(rDim*cDim*n2), c(rDim, cDim, n2))

x1Test <- sweep(array(rnorm(rDim*cDim*n1Test), c(rDim, cDim, n1Test)), 1:2, M1, '+')
x2Test <- array(rnorm(rDim*cDim*n2Test), c(rDim, cDim, n2Test))

xTest <- c(x1Test, x2Test)
dim(xTest) <- c(rDim, cDim, n1Test+n2Test)
yTest <- c(rep(1, n1Test), rep(2, n2Test))

r0 <- c0 <- 5
plfd.model <- plfd(x1, x2, r0, c0)
print(plfd.model)

result <- predict(plfd.model, x=xTest, y=yTest)
print(result$mcr)

