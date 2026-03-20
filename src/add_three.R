#----------------------------------------------------------
#File: add_three.R
#Author: AI Chen
#Created: 2026-03-20
#Last Modified: 2026-03-20
#Description: 自定义函数
#Version: 
#Usage:
#--------------------------------------------------------
cat("\014")#clears the consoe
rm(list=ls())#remove all variables

add_three<-function(x){
  y<-x+3
  return(y)
}