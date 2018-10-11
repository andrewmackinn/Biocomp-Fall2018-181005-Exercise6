#1
# assume file is in current working directory
# write number of rows desired in rows <- ""

setwd("/Users/andrewmackinnon/Desktop/R/")
file <- read.csv("iris.csv")
rows <- 3
file[1:rows,]
head(file, n = rows)


#2
#To get the last two rows and columns
file[149:150,4:5]
file[(nrow(file)-1):nrow(file), 4:5]

#To get the observations for each species
unique(file$Species)
nrow(file[file$Species == "setosa",])
nrow(file[file$Species == "versicolor",])
nrow(file[file$Species == "virginica",])

#To get the observations with sepal width greater than 3.5
file[file$Sepal.Width > 3.5,]
#To write the data for setosa
setosa <- file[file$Species == "setosa",]
write.csv(setosa, file = "setosa.csv")
#To get the mean min and max
virginica <- file[file$Species == "virginica",]
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)

