# here is the code results blog link

#####https://swayamrassignment.blogspot.com/2022/02/module-4-programming-structure-in-r.html

# Converting data into vectors
freq <- c("0.6","0.3","0.4","0.4","0.2","0.6","0.3","0.4","0.9","0.2")
bloodp <- c("103","87","32","42","59","109","78","205","135","176")
first <- c("bad","bad","bad","bad","good","good","good","good","NA","bad")
last <- c("low","low","high","high","low","low","high","high","high","high")
finaldecision <- c("low","high","low","high","low","high","low","high","high","high")

#Using data frame to use it all together
HP <- data.frame(freq,bloodp,first,last,finaldecision)
HP

# I was getting Binary error so converted to numerics and used ifelse condition to 
# assign 1 or 0 for good and bad or low and high
freq <- as.numeric(freq)
bloodp <- as.numeric(bloodp)
first <- ifelse(first == "bad",1,ifelse(first == "good",0,NA))
second <- ifelse(second == "high",1,ifelse(second == "low",0,NA))
finaldecision <- ifelse(finaldecision == "high",1,ifelse(finaldecision == "low",0,NA))

# Using matrix to have rows and columns for the dataset values
HP_num <- matrix(c(freq,bloodp,first,second,finaldecision), ncol= 10  , nrow = 5, byrow = TRUE )
colnames(HP_num) <- colnames(HP_num)
rownames(HP_num) <- c("freq", "bloodp", "first", "Second", "finaldecision")

# generating boxplot for first, second doctor's assessment plots for Good, bad, low , high
boxplot(HP_num[3:4,],main = "MD Decisions on Patients Health History", xlab="Hospital Patients", las=2,col="red")

#plots to show final decision of doctors for immediate care and needs emergency
par(new=T)
plot(HP_num[5,], axes=F, col="purple", pch=17, xlab="", ylab="")

# to generate plot for patients frequency visits
par(new=T)
plot(HP_num[1,], axes=F, col="Green", pch=18, xlab="", ylab="Frequent Visits")

# to generate plot for blood pressure
par(new=T)
plot(HP_num[2,], axes=F, col="Blue", pch=8, xlab="", ylab="")
axis(4)
mtext("Blood Pressure", 4)

# to create histogram for frequent visits of an patient to hospital in past 12 months
hist(HP_num[1,], col="purple", main="Patient Frequency Visits", xlab="Visits Past Twelve Months", ylab="Hospital Patients")
