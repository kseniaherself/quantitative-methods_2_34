install.package("lme4")

sh <- read.table("https://raw.githubusercontent.com/LingData2019/LingData/master/data/duryagin_ReductionRussian.txt", header=TRUE) 
sh 

fit <- lm(f1~f2, data=sh)
summary(fit)


library(tydyverse) 
library(ggplot2) 

ggplot(sh) + geom_point(aes(x=f2, y=f1, color=vowel)) 


fit <- lmer(f1 ~ f2 + (1 | vowel), data=sh)
summary(fit)


# ????? 
fit1 <- lmer(f1 ~ f2 + (1 | vowel), data=sh)
sh$predict_lmer1 <-  predict(fit) 
# ????? 
fit2 <- lmer(f1 ~ f2 + (f2 | vowel), data=sh)
sh$predict_lmer2 <-  predict(fit) 
summary(fit2)


# ???? 


ggplot2(dat) + geom_point(aes(x=x, y=y))


# ========================= 

# -----different model------ 









