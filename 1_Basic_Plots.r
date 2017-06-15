library(corrplot)
library(ggplot2)
library(cowplot)
library(ggthemr)

mydata <- read.csv(file="/Users/AjayKulkarni/Study/Master of Science/Sem 2/CSI 703/Letter_Recognition_Data/letter-recognition.data", header=TRUE, sep=",")

attach(mydata)

dim(mydata) # Dimensions of the data
head(mydata) # To understand the column names
summary(mydata) # Summary of the data

ggthemr("flat")
ggthemr_reset()

#---------- Basic Histograms ------------#

z1 <- ggplot(data=mydata,aes(mydata$X1)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X1",y="Count")

z2 <- ggplot(data=mydata,aes(mydata$X2)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X2",y="Count")

z3 <- ggplot(data=mydata,aes(mydata$X3)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X3",y="Count")

z4 <- ggplot(data=mydata,aes(mydata$X4)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange")+ labs(x="X4",y="Count")

plot_grid(z1, z2, z3, z4, ncol = 2, nrow = 2)

z5 <- ggplot(data=mydata,aes(mydata$X5)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X5",y="Count")

z6 <- ggplot(data=mydata,aes(mydata$X6)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X6",y="Count")

z7 <- ggplot(data=mydata,aes(mydata$X7)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X7",y="Count")

z8 <- ggplot(data=mydata,aes(mydata$X8)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X8",y="Count")

plot_grid(z5, z6, z7, z8, ncol = 2, nrow = 2)

z9 <- ggplot(data=mydata,aes(mydata$X9)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X9",y="Count")

z10 <- ggplot(data=mydata,aes(mydata$X10)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X10",y="Count")

z11 <- ggplot(data=mydata,aes(mydata$X11)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X11",y="Count")

z12 <- ggplot(data=mydata,aes(mydata$X12)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X12",y="Count")

plot_grid(z9, z10, z11, z12, ncol = 2, nrow = 2)

z13 <- ggplot(data=mydata,aes(mydata$X13)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X13",y="Count")

z14 <- ggplot(data=mydata,aes(mydata$X14)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X14",y="Count")

z15 <- ggplot(data=mydata,aes(mydata$X15)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X15",y="Count")

z16 <- ggplot(data=mydata,aes(mydata$X16)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X16",y="Count")

plot_grid(z13, z14, z15, z16, ncol = 2, nrow = 2)


#------ Basic Boxplots -------#

p1 <- ggplot(mydata,aes(x="",y=mydata$X1)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="X1")

p2 <- ggplot(mydata,aes(x="",y=mydata$X2)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X2")

p3 <- ggplot(mydata,aes(x="",y=mydata$X3)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X3")

p4 <- ggplot(mydata,aes(x="",y=mydata$X4)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X4")

plot_grid(p1, p2, p3, p4, ncol = 4, nrow = 1)

p5 <- ggplot(mydata,aes(x="",y=mydata$X5)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="X5")

p6 <- ggplot(mydata,aes(x="",y=mydata$X6)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X6")

p7 <- ggplot(mydata,aes(x="",y=mydata$X7)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X7")

p8 <- ggplot(mydata,aes(x="",y=mydata$X8)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X8")

plot_grid(p5, p6, p7, p8, ncol = 4, nrow = 1)

p9 <- ggplot(mydata,aes(x="",y=mydata$X9)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="X9")

p10 <- ggplot(mydata,aes(x="",y=mydata$X10)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X10")

p11 <- ggplot(mydata,aes(x="",y=mydata$X11)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X11")

p12 <- ggplot(mydata,aes(x="",y=mydata$X12)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X12")

plot_grid(p9, p10, p11, p12, ncol = 4, nrow = 1)

p13 <- ggplot(mydata,aes(x="",y=mydata$X4)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="X13")

p14 <- ggplot(mydata,aes(x="",y=mydata$X14)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X14")

p15 <- ggplot(mydata,aes(x="",y=mydata$X15)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X15")

p16 <- ggplot(mydata,aes(x="",y=mydata$X16)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X16")

plot_grid(p13, p14, p15, p16, ncol = 4, nrow = 1)

#----- Pearson's Correlation Coefficient ------#

k1 = cor(mydata[sapply(mydata,is.numeric)],method="pearson")
corrplot(k1,method="number")
corrplot(k1,method="pie")





