rm(list=ls())
library("tidyverse")
library("RMySQL")
source("credentials.R")

##########################The program
con <- dbConnect(RMySQL::MySQL(), host = hst, user = usr, password = pswd, dbname= db)
mydf <- dbGetQuery(con, "SELECT * FROM pbeauty")
write_csv(mydf, file="publicdata/pbeauty.csv")

