###### This is the file where you save your R code that produces the 
# objects (graphs, tables) that you want to embed into  your assignment. 
#Make sure that there are no errors when you source this file before sourcing 
# it from assignment1.Rmd file. To show you how it is done I have included code
#below that creates a histogram of the choices made.

rm(list=ls()) #makes sure that your work environment is clean.
library("tidyverse") #we use functions from this library.
slash <- ifelse(.Platform$OS.type=="unix", "/", "\\") #The eternal directory battle: Windows vs. *nix

mydf <- read_csv(paste("publicdata",slash,"pbeauty.csv",sep=""))%>%
  mutate(nudge=factor(nudge,labels=c("placeholder: your choice","placeholder: 50","placeholder: 33")))%>%
  group_by(nudge)%>%
  mutate(target=2/3*mean(choice), 
         error=abs(choice-target))

(first_plot <- ggplot(data=mydf,aes(x=choice))+
    geom_histogram(bins=20)+
    geom_rug(sides = "b", aes(y = 0), alpha=.25)+
    geom_vline(xintercept = 68,lty=2)+
    geom_vline(mapping = aes(xintercept = target)) +
    facet_grid(rows=vars(nudge))+
    labs(title="P-beauty contest: Can we use a nudge to discourage irrational choices?",
    subtitle=paste("irrational choice to the right of dashed line at 68, Target is solid line"))
    )
ggsave(file="first_plot.jpeg",plot=first_plot)

