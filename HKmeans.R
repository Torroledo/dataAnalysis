rm(list = ls())
# Preparing Data 
mydata <- cbind(matrix(runif(200,min = 0.5,max = 1),ncol = 2),
                #matrix(rnorm(100,sd = 0.3), ncol = 2)
                matrix(rnorm(200,mean = 0.25,sd = 1),ncol = 2))

d <- dist(mydata, method = "euclidean") # distance matrix
fit <- hclust(d, method="ward.D") 
plot(fit) # display dendogram
groups <- cutree(fit, k=5) # cut tree into 5 clusters
# draw dendogram with red borders around the 5 clusters 
rect.hclust(fit, k=5, border="red")

plot(mydata)
