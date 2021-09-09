###### This is the file where you save your R code that produces the 
# objects (graphs, tables) that you want to embed into  your assignment. 
#Make sure that there are no errors when you source this file before sourcing 
# it from assignment1.Rmd file. To show you how it is done I have included code
#below that creates a histogram of the choices made.

library("here") #for file paths that work for everyone.
library("tidyverse") #we use functions from this library.
here::i_am("ass0_2021_fall_solutions.R")

mydf <- read_csv(here("publicdata","pbeauty.csv"))%>%
  mutate(nudge=factor(nudge,labels=c("placeholder: your choice","placeholder: 67 better choice than 68 or more")))%>%
  group_by(nudge)%>%
  mutate(target=2/3*mean(choice), 
         error=abs(choice-target),
         over_67=choice>67)# variable over_67 is a logical TRUE/FALSE

irrational <- mydf%>%
  summarize(over_67=sum(over_67),#sum() converts logical TRUE=1, FALSE=0, so this counts the number of people in each treatment who chose >67.
            total=n())%>%# n() counts the total number of subjects in each treatment. 
  mutate(proportion_irrational=over_67/total)

winners <- mydf%>%
  ungroup()%>%
  slice_min(error)%>%
  select(oneid)%>%
  pull()



(first_plot <- ggplot(data=mydf,aes(x=choice))+
    geom_histogram(bins=20)+
    geom_rug(sides = "b", aes(y = 0), alpha=.25, position="jitter")+
    geom_vline(xintercept = 67,lty=2)+
    geom_vline(mapping = aes(xintercept = target)) +
    facet_grid(rows=vars(nudge))+
    labs(title="P-beauty contest: Can we use a nudge to discourage irrational choices?",
    subtitle=paste("irrational choice to the right of dashed line at 68, Target is solid line"))
    )

