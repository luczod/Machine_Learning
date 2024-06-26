# Hierarchical Clustering

# Importing the dataset
dataset = read.csv('mall.csv')
X = dataset[4:5]
View(X)

# Using the dendrogram to find the optimal number of clusters
dendrogram = hclust(d = dist(X, method = 'euclidean'),
                    method = 'ward.D')
# Largest VERTICAL distance that we can make without crossing any other HORIZONTAL line.
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab = 'Customers',
     ylab = 'Euclidean distances')

# Fitting Hierarchical Clustering to the dataset
hc = hclust(d = dist(X, method = 'euclidean'),
            method = 'ward.D')
y_hc = cutree(hc, 5)

# Visualizing the clusters
library(cluster)
clusplot(x = X,
         clus = y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels= 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')

