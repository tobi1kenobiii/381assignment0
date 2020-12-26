###### This is the file where you save your R code that produces the 
# objects (graphs, tables) that you want to embed into  your assignment. 
#Make sure that there are no errors when you source this file before sourcing 
# it from assignment1.Rmd file. To show you how it is done I have included code
#below that creates a histogram of the choices made.

rm(list=ls()) #makes sure that your work environment is clean.
library("tidyverse") #we use functions from this library.
slash <- ifelse(.Platform$OS.type=="unix", "/", "\\") #The eternal directory battle: Windows vs. *nix


mydf <- read_csv(paste("publicdata",slash,"pbeauty.csv",sep=""))
target <- mydf%>%
  summarise(2/3*mean(choice))%>%
  pull()

(first_plot <- ggplot(data=mydf,aes(x=choice))+
    geom_histogram(bins = 10)+
    geom_rug(sides = "b", aes(y = 0), position = "jitter", alpha=.25)+
    geom_vline(xintercept = target)+
    geom_vline(xintercept = 68,lty=2)+
    labs(title="Histogram of choices made in a p-beauty contest",
    subtitle=paste("target is solid line at ",round(target,1)," irrational choice to the right of dashed line at 68."))
    )


