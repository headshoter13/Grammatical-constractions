setwd("E:/Dropbox/project gk")

df <- read.csv("Uderzhy.csv", header = T)
df1 <- read.csv("Umolky.csv", header = T)
df2 <- read.csv("Ustali.csv", header = T)
all_data <- read.csv("vse_bez.csv", header = T)

uderzhu.art <- nrow(df[df$Sphere=='art',])
umolku.art <- nrow(df1[df1$Sphere=='art',])
ustali.art <- nrow(df2[df2$Sphere=='art',])

uderzhu.neart <- nrow(df) - uderzhu.art
umolku.neart <- nrow(df) - umolku.art
ustali.neart <- nrow(df) - ustali.art


constr.uderzhu <- c(neart=uderzhu.neart, art=uderzhu.art)
constr.umolku <- c(neart=umolku.neart, art=umolku.art)
constr.ustali <- c(neart=ustali.neart, art=ustali.art)

df = as.data.frame(rbind(constr.uderzhu, constr.umolku, constr.ustali))
chisq.test(df)





barplot(table(df$Sphere), las = 1)
barplot(table(df1$Sphere), las = 1)
barplot(table(df2$Sphere), las = 1)
barplot(table(df3$Sphere), las = 1)
