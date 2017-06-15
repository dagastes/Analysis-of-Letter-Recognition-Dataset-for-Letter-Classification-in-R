library(xlsx)

mydata <- read.csv(file="/Users/AjayKulkarni/Study/Master of Science/Sem 2/CSI 703/Letter_Recognition_Data/letter-recognition.data", header=TRUE, sep=",")

attach(mydata)

n = nrow(mydata)

train = sample(1:n, size = round(0.7*n),replace = FALSE)
t1 = mydata[train,]
t2 = mydata[-train,]

n1 = nrow(t1)
n2 = nrow(t2)

write.xlsx(x = t1,file="Training.xlsx",sheetName = "Sheet1", row.names = FALSE)
write.xlsx(x = t2,file="Testing.xlsx",sheetName = "Sheet1", row.names = FALSE)
