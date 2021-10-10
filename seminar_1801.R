log(8) 
# дефолтная основа логорифма: 
exp(1) 
2.718282^2.079442 

# поэтому нужно указывать отдельно если иное 
log(x = 8, base = 2) 
log2(8) 

2+3 
sqrt(4) 
a <- 2+5^2 
b <- a-3 
b = a+3 

# стрелка — присваивание значения переменной, 
# равно — присваивание значения переменной в функции 
sqrt(x = 16) 
sqrt(x <- 16) 

# очищение переменной 
rm(x) 

a == b 
a1 <- a 
a1 == a 
a > b 
a > a1 
a >= a1 
a < b 

a <- 27L 
# complex number 
a <- 1 + 3i 

text <- "hi!" 
text2 <-  'h"i"!' 

d <- a == b 

c(1, 2) 
# if three number then three-dimentional vectors — yes 
# is it always from 0,0 to n,m ? — rather yes, convention 

# data of different type > changes into most ?? type of data 
# here: into text 
c("3", 5) 
c("3", 5, FALSE) 
c(5, FALSE) 

# лучше не писать T F отдельными буквами 
c(TRUE, T, False) 
sum(c(TRUE, TRUE, FALSE)) 

c("3", c(5, FALSE)) 

v <-  c(6, 6, 7, 0) 
sqrt(v) 

n <- 1:4 
m <- 4:1 
n + m 
n ^ m 

# повторение в цикл 
s <- 0:1 
n*s 
n + s 

# если длина вектров не кратна: 
t <- 1:3 
n*t 
t*n 

n*2 


# descriptive statistics 

# standard deviation 
x <- c(6, 6, 7, 0, 14, 24, 16, 15, 2, 0) 
min(x) 
max(x) 
mean(x) 
sum(x)/length(x) 
median(x) 
var(x) # variability 
sd(x) 
sqrt(var(x)) # = variability 

?mean 
# cut 10% of max values and cut 10% of min 
mean(x, trim = 0.1) 

mean(x, trim = 0.5) # это median 

quantile(x) 
?quantile 
quantile(x, probs = seq(0, 1, 0.1)) # seq — ??? 

IQR(x) 

c_v <- c("a", "a", "a", "a", "b") 
# how to calculate element frequency 
table(c_v) 

