# to install package and load it in library

install.packages("plyr")
library(plyr)

# to read the dataset from a .txt file by using file.choose() to select it from prompt of file location
Student_assgn_6 <-read.table(file.choose(),header=TRUE, sep = ",")

# to check the read data from .txt file
Student_assgn_6


# to sort the data by student gender and calculate the mean of student grade by sex
students_meanbysex <- ddply(Student_assgn_6, "Sex", transform, grade.average = mean(Grade))

# to check the sortted dataset by grade average
students_meanbysex

# to write the sortted dataset to a file
write.table(students_meanbysex, "Sorted_students_meanbysex")

# to filter the original dataset(Student_assgn_6) to include only the data 
# for which the students name contains the letter "i" in name.
filter_i_in_name <- subset(Student_assgn_6, grepl("[iI]", Student_assgn_6$Name, ignore.case=T))

# to check the new filtered dataset 
filter_i_in_name

# to write the filter_i_in_name dataset to a csv file
write.table(filter_i_in_name, "DataSubset_csvfile", sep=",")

