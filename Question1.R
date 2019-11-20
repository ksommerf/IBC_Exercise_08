#Kyle Sommerfield and Farai Musariri
#Run script to create plot

#Read the .txt file into scoring
scoring <- read.table(file="UWvMSU_1-22-13.txt",header=TRUE,stringsAsFactors=FALSE)

#Create dataframe with only UW scoring
UWscoring <- scoring[scoring$team=="UW",]

#Create a dataframe with only MSU scoring
MSUscoring <- scoring[scoring$team=="MSU",]

#Create vectors with time and cumulative score for UW
Time <- UWscoring[,1]
Score <- cumsum(UWscoring[,3])

#Create vectors with time and cumulative score for MSU
MSUtime <- MSUscoring[,1]
MSUScore <- cumsum(MSUscoring[,3])

#Create a plot of UW score and MSU score on same axes
plot(Time,Score,type="l",col="red")
lines(MSUtime,MSUScore,col="green")