setwd('C:/Users/ACER/Documents/Tugas UAS metopel')
library()
library('readxl')
library('tidyverse')
dat<-read_excel('Hasil hubungan Uas Metopel.xlsx')
plot(dat$x,dat$y,xlab="Jumlah kehadiran",ylab="nilai UTS Manajemen Keuangan")
reg1<-lm(y~x,data=dat)
summary(reg1)
dat$u<-resid(reg1)
plot(dat$y,dat$u,xlab="nilai UTS Manajemen Keuangan",ylab="error")
