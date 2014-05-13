#http://www.r-tutor.com/elementary-statistics/numerical-measures

#mean
> duration = faithful$eruptions     # the eruption durations 
> mean(duration)                    # apply the mean function 

waiting = faithful$waiting
mean(waiting)

#Median
> duration = faithful$eruptions     # the eruption durations 
> median(duration)                  # apply the median function 

waiting = faithful$waiting
median(waiting)

#Quartile
> duration = faithful$eruptions     # the eruption durations 
> quantile(duration)                # apply the quantile function 


#Percentile
> duration = faithful$eruptions     # the eruption durations 
> quantile(duration, c(.32, .57, .98)) 

waiting = faithful$waiting
quantile(waiting, c(.17, .43, .67,.85)) 

#range
> duration = faithful$eruptions     # the eruption durations 
> max(duration) - min(duration)     # apply the max and min functions 

#Interquartile Range
> duration = faithful$eruptions     # the eruption durations 
> IQR(duration)                     # apply the IQR function 

#Box Plot
> duration = faithful$eruptions       # the eruption durations 
> boxplot(duration, horizontal=TRUE)  # horizontal box plot 

#Variance
> duration = faithful$eruptions    # the eruption durations 
> var(duration)                    # apply the var function 

#Standard Deviation
> duration = faithful$eruptions    # the eruption durations 
> sd(duration)                     # apply the sd function 



