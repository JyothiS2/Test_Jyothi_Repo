#As per assignment Given A =matrix(c(2,0,1,3), ncol=2)

#Creating A Matrix

A=matrix(c(2,0,1,3), ncol=2)
A

#A matrix as been created

#As per assignment, B given as B=matrix(c(5,2,4,-1), ncol=2)

B=matrix(c(5,2,4,-1), ncol=2)

B


# B matrix as been obtained

#Find A + B
A+B

#A+B as been obtained

##Find A - B

A-B

#A-B as been obtained

#Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.




diag(c(4,1,2,3))

#diag 4,1,2,3 as been obtained


#To generate following matrix.


#[,1] [,2] [,3] [,4] [,5]
## [1,] 3 1 1 1 1
## [2,] 2 3 0 0 0
## [3,] 2 0 3 0 0
## [4,] 2 0 0 3 0
## [5,] 2 0 0 0 3

# Created the diag matrix 5,5 to show number 3 as diag


b <- diag(3,5,5)
b



# Modifying the first row to create an expected matrix
b[1,] <- c(3,1,1,1,1)

b

#Modifying the first coloumn to create an expected matrix

b[,1] <- c(3,2,2,2,2)

b

##Obtained the expected diagonal matrix


