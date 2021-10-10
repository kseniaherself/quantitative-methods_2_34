# 15.04 

eng <- read.csv("http://math-info.hse.ru/f/2018-19/ling-data/english.csv")

library(tidyverse)
eng %>% filter(AgeSubject == 'young', WordCategory == 'N') %>% 
  select(RTlexdec, WrittenFrequency, LengthInLetters, FamilySize, NumberSimplexSynsets) -> small 

library(GGally) 
ggpairs(small) 

# the more frequent the less recognition time — negative correlation 
# lenght and reaction time: 0.683 — correlation too small 


# регрессия как все остальные связаны с RTlexdec 
# our model 
# RTlex = beta_0 + beta_1*WrittenFrequency + beta_2*LengthInLetters + beta_3*FamilySize + beta_4*NumberSimplexSynsets 
# here RTlexdec is dependent variable 
# regressors, predictors, features — WrittenFrequency, LengthInLetters, FamilySize, NumberSimplexSynsets 
fit <- lm(RTlexdec ~ WrittenFrequency + LengthInLetters + FamilySize + NumberSimplexSynsets, data = small)
fit 

# test for significance 

# for each coeff we coresponding coiciant
summary(fit) 
# p-value: < 2.2e-16 < 0.05 => this coefficient is significant 
# LengthInLetters 0.005992 the larger lentgth the longer is reaction (positive correlation), 


# new model 
summary(lm(RTlexdec ~ LengthInLetters, data=small))
# smth increases 


fit$coefficients['WrittenFrequency']
# how prediction is differ from the real 
fit$residuals

small$residuals <- fit$residuals 
plot(small$RTlexdec, fit$residuals)

library(stargazer) 
stargazer(fit, type = "html")


