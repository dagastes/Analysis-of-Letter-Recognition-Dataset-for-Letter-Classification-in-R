library(xlsx)
library(MASS)
library(randomForest)
library(caret)
library(Boruta)
library(earth)
library(plotmo)
library(plotrix)
library(TeachingDemos)
library(leaps)
library(faraway)

t1 <- read.xlsx2("/Users/AjayKulkarni/Study/Master of Science/Sem 2/CSI 703/Letter_Recognition_Data/Training.xlsx",1)

head(t1)

# Variable Selection

# 1. BIC plot

subsets <- regsubsets(Letter ~ X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + X12 + X13 + X14 + X15 + X16,t1)
plot(subsets)

#2. Boruta
output <- Boruta(lenum ~ X1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X11+X12+X13+X14+X15+X16, data=t1,doTrace=2)


