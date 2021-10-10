dat <- read.csv("https://raw.githubusercontent.com/agricolamz/2018-MAG_R_course/master/data/baltic.csv")
dat 

t(dat[3:6])

# ????????? 
dat_t 

dist(dat_t, method = 'eucl')
cl <- hclust(dist(dat_t, method = 'eucl'))

plot(cl)

cutree(cl, k=3)

# =================== 

dat <- read.csv("https://raw.githubusercontent.com/LingData2019/LingData2020/master/data/orientation.csv")
dat[,2:5]

dat_numeric

rownames(dat_numeric)







