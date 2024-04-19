# Multiple Linear Regression

# Importing the dataset
dataset = read.csv('50_Startups.csv')

# Encoding categorical data
# one hot encoding
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1, 2, 3))

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = Profit ~ .,
               data = training_set)
# the lower the P value is,the more impact or effect your independent variable
# 0.1 - 1 , no statistical significance.
# state1 deleted by dummy variable trap
summary(regressor)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred
#  4         5         8        11        16        20        21        24        31        32 
#  173981.09 172655.64 160250.02 135513.90 146059.36 114151.03 117081.62 110671.31  98975.29  96867.03
 

# Building the optimal model using Backward Elimination
# . means white space in 'R.D.Spend' or 'Research and development expenditure'
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = dataset)
summary(regressor)
# remove variables with low significance level - HIGH P-VALUE
# state
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend,
               data = dataset)
summary(regressor)

# Administration
regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset)
summary(regressor)


# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred
#       4         5         8         11        16        20        21        24        31        32 
# 173441.31 171127.62 160455.74 135011.91 146032.72 115816.42 116650.89 109886.19  99085.22  98314.55 

