library("dplyr")
library("tidyr")


x1 <- rpois(n = 50, lambda = 10)
x2 <- runif(n = 50, min = 1, max = 10)
x3 <- sample(x = c(1, 3, 5), size = 50, replace = TRUE)

x3
df <- as.data.frame(matrix(runif(n=10, min=1, max=20), nrow=5))

which(df > 10 , useNames = TRUE)


#my_data <- read.table(file = "C:/Users/aelassim/Documents/classeur1.csv", sep = ";", header=TRUE, row.names = 1)
my_data <- read.table(file = "C:/Users/aelassim/Documents/classeur1.csv", sep = ";", header=TRUE)

names(my_data)

longtable <- tidyr::pivot_longer(data = my_data, cols = "Espèce" )


tablefin <- slice_min(longtable,n=10, order_by = value)

my_data$X1


getwd()
list.files("C:/Users/aelassim/Documents")
read

sort(my_data$X1, decreasing = TRUE)[1:10]

names(my_data)[2]

for(i in 2:17){
  #sort(my_data[i], decreasing = TRUE)
  test <- my_data[,i]
  test <- sort(test, decreasing = TRUE)
}

sort(my_data[,2])
point1 <- my_data %>%
  arrange(x1) 
