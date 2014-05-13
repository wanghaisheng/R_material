#http://www.r-tutor.com/elementary-statistics/quantitative-data

#Frequency Distribution of Quantitative Data
#1.We first find the range of eruption durations with the range function. It shows that the observed eruptions are between 1.6 and 5.1 minutes in duration.
duration = faithful$eruptions 
range(duration) 
#2.Break the range into non-overlapping sub-intervals by defining a sequence of equal distance break points. If we round the endpoints of the interval [1.6, 5.1] to the closest half-integers, we come up with the interval [1.5, 5.5]. Hence we set the break points to be the half-integer sequence { 1.5, 2.0, 2.5, ... }.
breaks = seq(1.5, 5.5, by=0.5)    # half-integer sequence 
breaks 
#3.Classify the eruption durations according to the half-unit-length sub-intervals with cut. As the intervals are to be closed on the left, and open on the right, we set the right argument as FALSE.
duration.cut = cut(duration, breaks, right=FALSE)
#4.Compute the frequency of eruptions in each sub-interval with the table function.
duration.freq = table(duration.cut)
#调用已经有的模块函数
#functionName = source("path")$value
#第一种方法
#if(identical(length(ls(pattern = "^maxN$")), 0))
 # source("maxN.R")
#第二种方法
if(exists("maxN", mode = "function"))
  source("maxN.R")
maxN(duration.freq,1)


#histogram
duration = faithful$eruptions
hist(duration,right=FALSE)
waiting = faithful$waiting
hist(waiting,right=FALSE)

#Relative Frequency Distribution of Quantitative Data
duration = faithful$eruptions 
breaks = seq(1.5, 5.5, by=0.5) 
duration.cut = cut(duration, breaks, right=FALSE) 
duration.freq = table(duration.cut) 
duration.relfreq = duration.freq / nrow(faithful) 

#Cumulative Frequency Distribution
duration = faithful$eruptions 
breaks = seq(1.5, 5.5, by=0.5) 
duration.cut = cut(duration, breaks, right=FALSE) 
duration.freq = table(duration.cut) 
duration.relfreq = duration.freq / nrow(faithful) 
duration.cumfreq = cumsum(duration.freq) 
cbind(duration.cumfreq) 

#Cumulative Frequency Graph
duration = faithful$eruptions 
breaks = seq(1.5, 5.5, by=0.5) 
duration.cut = cut(duration, breaks, right=FALSE) 
duration.freq = table(duration.cut) 

cumfreq0 = c(0, cumsum(duration.freq)) 
plot(breaks, cumfreq0,            # plot the data 
       main="Old Faithful Eruptions",  # main title 
       xlab="Duration minutes",        # x−axis label 
       ylab="Cumulative eruptions")   # y−axis label 
lines(breaks, cumfreq0)           # join the points 

#Cumulative Relative Frequency Distribution
duration = faithful$eruptions 
breaks = seq(1.5, 5.5, by=0.5) 
duration.cut = cut(duration, breaks, right=FALSE) 
duration.freq = table(duration.cut) 
duration.relfreq = duration.freq / nrow(faithful) 
duration.cumfreq = cumsum(duration.freq) 
duration.cumrelfreq = duration.cumfreq / nrow(faithful) 
cbind(duration.cumrelfreq) 


#Cumulative Relative Frequency Graph
duration = faithful$eruptions 
breaks = seq(1.5, 5.5, by=0.5) 
duration.cut = cut(duration, breaks, right=FALSE) 
duration.freq = table(duration.cut) 

duration.cumfreq = cumsum(duration.freq) 
duration.cumrelfreq = duration.cumfreq / nrow(faithful) 
cumrelfreq0 = c(0, duration.cumrelfreq) 
plot(breaks, cumrelfreq0,            # plot the data 
     main="Old Faithful Eruptions",  # main title 
     xlab="Duration minutes",        # x−axis label 
     ylab="Cumulative eruptions")   # y−axis label 
lines(breaks, cumrelfreq0)           # join the points 

#Stem-and-Leaf Plot

> duration = faithful$eruptions 
> stem(duration) 

#Scatter Plot

duration = faithful$eruptions
waiting = faithful$waiting    
head(cbind(duration, waiting))
duration = faithful$eruptions      # the eruption durations 
waiting = faithful$waiting         # the waiting interval 
plot(duration, waiting,            # plot the variables 
          xlab="Eruption duration",        # x−axis label 
          ylab="Time waited")              # y−axis label 

abline(lm(waiting ~ duration)) 
