glucose.level = as.integer(runif(50,75,120)) #50 integer glucose levels between 75 and 120 assigned randomly 
glucose.level.freq = table(glucose.level) #construct a Frequency table of the glucose table
glucose.level.freq.percentage = (table(glucose.level)/length(glucose.level))*100 #relative frequency percentage
glucose.level.cum.freq = cumsum(table(glucose.level)) #cummilative frequency using cummulative sum fxn
glucose.level.vec = names(glucose.level.freq) #go through freq values, and extract the levels (unique names in the data)
glucose.freq.vec = as.vector(glucose.level.freq) #convert glusoce level freq in to vector (excracts unique values in data)
glucose.cum.freq.vec = as.vector(glucose.level.cum.freq) #convert cumulative freq into vector
glucose.data.cal = cbind(glucose.level.vec,glucose.freq.vec,glucose.cum.freq.vec) #Bind datasets into column
colnames(glucose.data.cal) = c("Glucose levels","frequency", "cummunlative freq%")
write.csv(glucose.data.cal, file="glucosedata.csv") #write to a file

#graphically representing data
histo = hist(glucose.level) #histogram of glucose levels
x.pts = histo$breaks #extract breaks from histogram to make polygr
y.pts = c(0, histo$counts)
lines(x.pts, y.pts, type='l') #
plot(x.pts, y.pts, type = "l") #plots the 
hist(glucose.level, prob = "T") and #trend of a histogram
lines(density(glucose.level)) #trend of the histogram
