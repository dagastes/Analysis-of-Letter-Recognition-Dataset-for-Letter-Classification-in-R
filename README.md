# Analysis-of-Letter-Recognition-Dataset-for-Letter-Classification-in-R

Letter Recognition data set has been successfully analyzed by finding important features in the data and then classifying the data based on different classification algorithms. We started feature selection using Bayesian Information Criterion and Boruta. Both the techniques indicated that all the variables are important for building the model.

After selecting all the features, we built the model and we compared three classification algorithms which are Random Forest, SVM, and KNN. It can be observed that overall accuracy of the Random Forest is about 89% and it is able to predict 97% correct A’s which is the highest prediction accuracy for any letter. For SVM the overall prediction accuracy observed is around 76% and the SVM is able to predict 87% of correct A’s. In the case of KNN, we used value K = 1 based on the error rate. The overall accuracy observed for the KNN is about 95% and KNN is able to predict 99% of correct A’s.

Thus, we concluded that all the 16 variables are important for classifying the letters in Letter Recognition data set. We also conclude that KNN has better accuracy as compared to Random Forest and SVM. KNN is also able to classify 99% A’s correctly which is the greater percentage of prediction for A as compared to any other letter.

# Shiny Screenshots

![shiny_1](https://cloud.githubusercontent.com/assets/25486323/26531065/643abff2-43af-11e7-84cd-de891156ab95.png)

![shiny_2](https://cloud.githubusercontent.com/assets/25486323/26531070/643e63b4-43af-11e7-9285-4e760fcb2c01.png)

![shiny_3](https://cloud.githubusercontent.com/assets/25486323/26531067/643be1fc-43af-11e7-9803-0fefa34d4d1b.png)

![shiny_4](https://cloud.githubusercontent.com/assets/25486323/26531068/643c374c-43af-11e7-9322-4e98e21d66ab.png)

![shiny_5](https://cloud.githubusercontent.com/assets/25486323/26531066/643b5a5c-43af-11e7-938d-546f5cb3f1d1.png)

![shiny_6](https://cloud.githubusercontent.com/assets/25486323/26531069/643e27fa-43af-11e7-9ccb-2c9bd4df03d2.png)

![shiny_7](https://cloud.githubusercontent.com/assets/25486323/26531072/6448cade-43af-11e7-8fe9-27af0b762d3c.png)

![shiny_8](https://cloud.githubusercontent.com/assets/25486323/26531071/6441e250-43af-11e7-8eca-aacdae026217.png)
