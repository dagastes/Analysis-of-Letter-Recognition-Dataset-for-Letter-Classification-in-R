library(xlsx)
library(randomForest)
library(caret)
library(plotly)
library(e1071)
library(class)

t1 <- read.xlsx2("/Users/AjayKulkarni/Study/Master of Science/Sem 2/CSI 703/Letter_Recognition_Data/Training.xlsx",1)

t2 <- read.xlsx2("/Users/AjayKulkarni/Study/Master of Science/Sem 2/CSI 703/Letter_Recognition_Data/Testing.xlsx",1)


xtest <- rbind(t1[1,],t2)
xtest <- xtest[-1,]

# 1. Random Forest
model <- randomForest(Letter ~ X1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X11+X12+X13+X14+X15+X16,data=t1,ntree=10,importace=TRUE)
pred <- predict(model,newdata=xtest)
write.xlsx(pred,"/Users/AjayKulkarni/Study/Master of Science/Sem 2/CSI 703/Letter_Recognition_Data/Random_Forest.xlsx")
table(pred,t2$Letter)

# 2. Support Vector Machine (SVM)
model <- svm(Letter ~ .,data=t1)
pred <- predict(model,newdata=xtest)
write.xlsx(pred,"/Users/AjayKulkarni/Study/Master of Science/Sem 2/CSI 703/Letter_Recognition_Data/SVM.xlsx")
table(pred,t2$Letter)

# 3. KNN 

# Selecting optimal value for K in KNN

labels <- t1[,1]
error.rate <- numeric(10)
for(i in 1:10)
{
  knn.pred <- knn(t1[,-1],t2[,-1],labels, k = i)
  error.rate[i] <- 1-mean(knn.pred == t2[,1])
}
plot(1:10, error.rate,"b", pch = 20, col = "red", xlab = "K", ylab = "Error Rate")

pred <- knn(t1[,-1],t2[,-1],labels, k = 1)
table(pred,t2$Letter)
write.xlsx(pred,"/Users/AjayKulkarni/Study/Master of Science/Sem 2/CSI 703/Letter_Recognition_Data/knn.xlsx")

