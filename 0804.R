dat <- read.csv(url("https://raw.githubusercontent.com/rpruim/OpenIntro/master/data/hsb2.csv"))

lm(science ~ math, data = dat) 

plot(dat$science, dat$math)
curve(16.7579 + 0.666 * x, add = TRUE)

library(ggplot2)
ggplot(dat, aes(x=science, y=math)) + geom_point() + geom_smooth(method='lm') 


# написать бета_0 и бета_1 
# где math зависимая переменная, а read — независимая 
# math * beta_1 + beta_0 \read 

lm(math ~ read, data = dat) 

plot(dat$science, dat$math)
curve(21.0382 + 0.6051 * x, add = TRUE)

library(ggplot2)
ggplot(dat, aes(x=math, y=read)) + geom_point() + geom_smooth(method='lm') 





