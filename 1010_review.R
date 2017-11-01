rm(list=ls())

foo(a, b, c=1, d=2)

three <- 75
four <- NA
is.na(four)

sex <- factor("m", c("m", "f"))
nlevels(sex)

c(1, 2, 3, c(1, 2, 3))

x <- c(1, 3, 4)
names (x) <- c("colA", "colB", "colC")
x

x <- c("a", "b", "c")
x[1]
x[3]
x[-1]
x[-2]

x <- c("a", "b", "c")
x[1:2]

x <- c(1, 3, 4)
names (x) <- c("A", "B", "C")
x
x["A"]
x[c("B", "C")]

x <- c("a", "b", "c")
length(x)
nrow(x)
NROW(x)

identical(c(1, 2, 3), c(1, 2, 3))

"a" %in% c("a", "b", "c")
"d" %in% c("a", "b", "c")

seq(3, 7, 3)

7:3

rep(1:2, each=5, times=2)

x <- list(name="foo", height=70)
x

x <- list(name="foo", height=c(1, 3, 5))
x$name
x$height
x[1]
x[2]

x <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol=3)
x[1,1]
x[1,2]
x[2,1]
x[2,2]

x[-3,]

x %*% x

t(x)

(x <- matrix(c(1, 2, 3, 4), ncol=2))
solve(x)

(x <- array(1:12,dim=c(3,4)))

(x <- array(1:12, dim=c(2,2,3)))

(d <- data.frame(x=c(1, 2, 3, 4, 5), y=c(2,4,6,8,10)))

(d <- data.frame(x=c(1, 2, 3, 4, 5),
                 y=c(2,4,6,8,10),
                 z=c("M","F","M","F","M")))

d$w <- c("A", "B", "C", "D", "E")
d

#####
(d2<-data.frame(x=c(1, 2, 3, 4, 5, 6)))
(d2$y<-d2$x*2)
(d2$z<-rep(c("M","F"),3))
d2
#####

head(x, 6)
d$v <- c("F", "G", "H", "I", "J")
d

d <- data.frame(a=1:3, b=4:6, c=7:9)
d[, names(d) %in% c("b", "c")]
d[, !names(d) %in% c("a")]

head(x, 6)
tail(x, 6)
View(x)

x <- matrix(1:9, ncol=3)
as.data.frame(x)

if (TRUE) {
  print("hello")
} else {
  print("world")
}

x <- c(1, 2, 3, 4, 5)
ifelse(x %% 2 == 0, "even", "odd")

for(i in 1:10){
  print (i)
}

i=1
while(i<=10){
  print(i)
  i=i+1
}

i <- 1
repeat {
  print(i)
  if (i>=10) {
    break
  }
  i <- i + 1
}

x <- c(1, 2, 3, 4, 5)
x + 1

x <- c(1, 2, 3, 4, 5)
ifelse(x %% 2 == 0, "even", "odd")

NA & TRUE
NA + 1

f <- function(x, y) {
  print(x)   
  print(y)
}
f(1,2) 
f(y=1, x=2)

n <- 100
f <- function() {
  n <- 1
  print(n)
}
f()

x <- 1:5
y <- 6:10
save(x, y, file="xy.RData")
rm(list=ls())
load("xy.RData")

d <- matrix(1:9, ncol=3)
apply(d, 1, sum)
apply(d, 2, sum)

colSums(iris[,1:4])

(result <- lapply(1:3, function(x) { x*2 }))
(result <- lapply(1:3, function(x) { x**2 }))

lapply(iris[, 1:4], median)
sapply(iris[, 1:4], median)

tapply(1:10, 1:10 %% 2 == 1, sum)
tapply(1:10, 1:10%%3==0, sum)

tapply(iris$Sepal.Length, iris$Species, mean)
tapply(mtcars$mpg, mtcars$cyl, mean)

rnorm(10,0,1)

rnorm(n=1, mean=0, sd=1)
rnorm(n=2, mean=10, sd=1)
rnorm(n=3, mean=100, sd=1)
mapply(rnorm,
       c(1, 2, 3),
       c(0, 10, 100),
       c(1, 1, 1))

mapply(mean, iris[, 1:4])

runif(n=1, min=0, max = 1)
runif(n=5, min=10, max = 20)
runif(n=10, min=50, max = 100)
mapply(runif,
       c(1, 5, 10),
       c(0, 10, 50),
       c(1, 20, 100))

