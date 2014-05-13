#http://www.r-tutor.com/elementary-statistics/qualitative-data
library(MASS) #load the package
school = painters$School 
school.freq = table(school)
school.relfreq = school.freq / nrow(painters) 
old = options(digits=1) 
colors = c("red", "yellow", "green", "violet","orange", "blue", "pink", "cyan") 
barplot(school.freq)
barplot(school.freq,         # apply the barplot function 
        col=colors)
pie(school.freq)              # apply the pie function 

score =painters$Composition
score.freq = table(score)
cbind(score.freq)
score.relfreq = score.freq / nrow(painters)
old = options(digits=1)
score.relfreq
cbind(score.relfreq)
barplot(score.relfreq)
pie(score.freq)              # apply the pie function 

#Category Statistics
#Create a logical index vector for school C. 
c_school = school == "C"
#Find the child data set of painters for school C.
c_painters = painters[c_school,] #child data set
#Find the mean composition score of school C. 
mean(c_painters$Composition)

tapply(painters$Composition, painters$School, mean)