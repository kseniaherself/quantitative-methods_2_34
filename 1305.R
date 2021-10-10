dat <- read.csv("https://raw.githubusercontent.com/rpruim/OpenIntro/master/data/hsb2.csv")
dat 

library(tidyverse) 

fit <- prcomp(dat %>% select(read, write, math, science, socst))
fit 

# PC_1 = -0.48*read + -0.42*write + -0.42*math + -0.429*science + -0.47* socst 
# PC_1 — overal performance of a student 

# PC_2 

summary(fit)

library(ggfortify) 
autoplot(fit, loadings = TRUE, loadings.label = TRUE)

# - - - -- - - -- - - - - - 

dat <- read.csv("https://raw.githubusercontent.com/agricolamz/2019_data_analysis_for_linguists/master/data/gospel_freq_words.csv")
dat 

row.names(dat) <- dat$word 

fit <- prcomp(dat %>% select(-word))
fit 

library(ggfortify) 
autoplot(fit, loadings = TRUE, loadings.label = TRUE, label = TRUE, shape = FALSE)




