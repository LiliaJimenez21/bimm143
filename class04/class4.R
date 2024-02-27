#' ---
#' title: "Lab 04"
#' author: "Lilia Jimenez"
#' ---

# My first R script

x<-1:50
plot(x ,sin(x))
plot(x, sin(x), typ="l")
plot(x, sin(x), typ="l", col="purple")
plot(x, sin(x), typ="l", col="purple", lwd=2)
plot(x, sin(x), typ="l", col="purple", lwd=2, xlab="hello")
