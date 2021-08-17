# 381 assignment 0

The following instructions assume that: 

1) you have, following instructions here: https://github.com/rpmartin/Rinstall, either: 
  - installed R, Rstudio, tidyverse, Rmarkdown, and git locally (on your computer) OR
  - signed up for an Rstudio cloud account and installed the tidyverse.

2) I have uploaded the data and the .R and .Rmd files (you should see them listed above. If not, they will be uploaded shortly after the experiment is completed.)

## Steps:

Click on the green button labeled code. (above)

Click on the clipboard icon to copy address to clipboard (the icon is to the right of the text box.)

open Rstudio either locally or on the cloud.

click on File in the top menu bar, then New Project, then Version Control, then Git.

Where it asks for Repository URL paste (control V) from your clipboard (this should be what you copied from above)

R chooses the name of the folder in which you will be working, but you should choose where you want this folder saved.

Click Create Project and Rstudio will start in this folder, and all the files you need have been cloned into this folder from github.

Open file solutions_assignment0.R

Ensure that your cursor is at the top of the file solutions_assignment0.R (the file is open in the top-left box in Rstudio). 
Run the code by repeatedly hitting both control and enter. 
By doing so you step through the code line by line, and in the bottom left panel you see the results of each line of code. 
The last line of code creates your first graph, which should show up in the bottom right panel.

There should be no errors (yet ;) when you run the code of solutions_assignment0.R. If there are errors, do not proceed further! 
Get in touch either by email or on the message board. 
Only once you have checked that there are no errors in your solutions_assignment0.R file should you open up solutions_assignment0.Rmd file.

In the solutions_assignment0.Rmd file set author to your first name initial and last name (e.g. Y. Name), and “sign” your academic integrity statement (replace `name here` with first name initial and last name). 

Knit your solutions_assignment0.Rmd file by hitting the knit button (there is a ball of yarn with a needle sticking out of it beside the word knit). 
This is called knitting because we are “weaving” together R code (that produces graphs and tables) and prose.

A new window should open with your assignment.

## Assignment Submission:

Unfortunately Brightspace strips images out of html files, so you will not be able to submit your knitted html file to brightspace.  Instead,

* Assignment submissions to Brightspace will be your 
1) .R file
2) .Rmd file
3) a link a.k.a. URL for your .html file.

* The easiest way to host your .html file on the web is to click the `publish` button on Rstudio's html viewer (the html viewer opens when you successfully knit your output.) 

* Choose Rpubs and setup a free account: Note that the *content* that you publish on RPubs is publicly viewable: probably best to limit the amount of personal information you provide i.e. do **not** include your student ID, and do **not** include your full name e.g. in your .Rmd file set author to `Y. Name` (good) rather than `Your Name: V00123456` (bad).

