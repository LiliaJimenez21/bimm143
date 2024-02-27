#' ---
#' title: "Lab 05: Data visualization with ggplot2"
#' author: "Lilia Jimenez"
#' date: "01/23/24"
#' ---


# Week 3 Data visualization lab

#install the package ggplot2
#install.packages("ggplot2")

#Any time I want to use this package I need to load it
library(ggplot2)

#View(cars)
#A quick baseR plot -not ggplot2
plot(cars)
#our first ggplot
#we need data + aes + geoms
ggplot(data=cars) + 
  aes(x=speed, y=dist) + 
  geom_point()


p<-ggplot(data=cars) + 
  aes(x=speed, y=dist) + 
  geom_point()
#add a line geom with geom_line
p + geom_line()
#add a trend line close to the data
p + geom_smooth()

p + geom_smooth(method = "lm")

#-------#
#read in our drug expression data
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

#first plot attempt
g<-ggplot(data=genes) + aes(x=Condition1, y=Condition2, col=State) + geom_point()

#add some color
g + scale_colour_manual(values = c("blue","gray","red")) +
labs(title=("Gene expression changes"), x="Control(No drug)", y="Drug treatment") +
theme_bw()

