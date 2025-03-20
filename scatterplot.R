install.packages("tidyverse")
library(tidyverse)
age<-c(2,3,4,6)
grade<-c(1,3,4,6)
df<-data.frame(age,grade)
write.csv(df,'shyam.csv')
d<-read.csv('shyam.csv')
ggplot(data=d,aes(x=age,y=grade))+geom_line()

