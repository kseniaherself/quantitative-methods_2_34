data <- read.csv('http://goo.gl/0btfKa')

t.test(n.cons.lapsyd ~ ejectives, data = data)

34.40000-19.05882 
# estimation for laguages with ejectives 

fit <- lm(n.cons.lapsyd ~ ejectives, data = data)

summary(fit)

# Estimate — estimate of the corresponding coeffs 
# Est. ej: = 15.341, and it is a _difference_ between numbers of consonants in languages 
# with ejectives and number of cons in languages without ejectives 

# residuals — just some general info about residuals, such as max min, ... 

# sr error: st error of the estimate 
# estimates are true with 2*st.err — conf interval: 
# if estimate = 15.341, conf_int = 15.341 +/- 2*3.209

# http://coltekin.net/cagri/R/data/tv.rda
#load("/Users/Xenia/Desktop/hse/MA courses/2 quantitative methods/tv.rda")

load("/Users/Xenia/Desktop/tv.rda")
summary(tv)

fit <- lm(cdi ~ tv.hours + book.reading, data = tv)
summary(fit)

# for two puple with book.reading fixed, the increasing of tv.hours will increase CDI 
# CDI — some interpretation of language proficiency 
# Communicative Development Inventory (CDI) 

summary(aov(fit))

# base level for book reading is once a month 

# interpretation of tv.hours -0.12320 
# if we consider with same book.reading ... 

# interpretation of book.readingseveral.times.day     1.62500
# if two with same tv.hours and the first reads once a month 
# and the second reads several times per day, the latter will have a larger CDI ...??? 

# if we exclure book.reading 
fit <- lm(cdi ~ tv.hours, data = tv)
summary(fit)

# tv.hourse is still negative and even more neg 
# -0.12320 — с фиксированием чтения книг (читают одинаково, ТВ смотрят по-разному) 
# -0.15 (tv.hours -0.14995) — на чтение книг не обращаем внимания 
# то есть мы можем ожидать что кто больше телевизор смотрит тот меньше читает 


