## ----setup, echo = FALSE-----------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
knitr::opts_knit$set(root.dir = paste0("~/Dropbox/Workshops/",
                                       "IntrotoRI"))


## ----eval = T, echo = T------------------------------------------------------------
2+3
6*7
pi*1  
6*3/2-3
6*3/(2-3)
1/0


## ----echo = T, eval = T------------------------------------------------------------
3^2
2^(3+2)
sqrt(9)
sin(2*pi)
log(1000)  
exp(6.907755)   


## ----echo = T, eval = F------------------------------------------------------------
## ?log
## help("log")


## ----echo = T, eval = F------------------------------------------------------------
## help.search("log")
## args(log)


## ----eval = T, echo = T------------------------------------------------------------
x <- 2 #Creates the object "x"
x    #Shows the contents of object "x"

y = 3.5
y

h <- "practice"   #You can also put strings in an object
h


## ----------------------------------------------------------------------------------
print(is("a"))

print(str(TRUE))

print(class(123.45))

print(class(as.integer(1000)))

n <- as.numeric(999999999999999999999)

print(class(n))


## ----------------------------------------------------------------------------------
# evaluate as logical, test whether 1 is greater than two
a <- 1 > 2


## ----------------------------------------------------------------------------------
# create two numerical values, one being NA, representing ages
age_john <- 39
age_jane <- NA

# logical NA from Jane's undefined age
(jo <- age_john > 50)
(ja <- age_jane > 50)


## ----------------------------------------------------------------------------------
(t <- as.logical(1))
(f <- as.logical(0))


## ----------------------------------------------------------------------------------
i <- as.integer(999999999999999999999)

print(class(i))


## ----------------------------------------------------------------------------------
print(class("CafÃ©"))


## ----error=TRUE--------------------------------------------------------------------
# this is a character
my_zip <- "98115"

# it is not numeric.
my_zip + 2


## ----------------------------------------------------------------------------------
# we can convert it to numeric, although it would be silly to do with ZIP codes, which are nominal values
as.numeric(my_zip) + 2

# Boston has ZIP codes starting with zeros
boston_zip <- "02134"
as.numeric(boston_zip)


## ----------------------------------------------------------------------------------
print(charToRaw("z"))

class(charToRaw("z"))


## ----------------------------------------------------------------------------------
# create a vector of length 1
a <- 1
is(a)


## ----------------------------------------------------------------------------------
help(rep)

z <- rep(1,5)
z

q <- rep(c(1, 2), 5)
q

t <- rep(c(1,2), c(5, 5))
t


## ----------------------------------------------------------------------------------
help(seq)

a <- 1:5
a

b <- seq(1,5)
b

c <- seq(5,1)
c

d <- seq(from=0, to=15, by=3)
d

e <- seq(0, 15, 3)
e


## ----------------------------------------------------------------------------------
c(1, "a", TRUE, charToRaw("z"))


## ----------------------------------------------------------------------------------
(c(1:3, TRUE, FALSE))


## ----------------------------------------------------------------------------------
c(1:3, TRUE, FALSE, "awesome!")


## ----------------------------------------------------------------------------------
# a vector 
(v <- c(1, 3, 2))

(sort(v))


## ----------------------------------------------------------------------------------
# create a random normal 
set.seed(5)
normvec100 <- rnorm(n = 100)

length(normvec100)
class(normvec100)
class(normvec100 > 1)


## ----------------------------------------------------------------------------------
v <- seq(from = 0, to = 10, by = 2)
v[4]


## ----------------------------------------------------------------------------------
v <- seq(from = 0, to = 10, by = 2)
v

which(v > 5)

v[which(v > 5)] <- 100
v



## ----------------------------------------------------------------------------------
mean(v)
sd(v)


## ----------------------------------------------------------------------------------
# make a vector 1 to 100
(v <- 1:100)

# load to a matrix
(m1 <- matrix(v, ncol = 10, byrow = TRUE))

# different r, c ordering
(m2 <- matrix(v, ncol = 10, byrow = FALSE))


## ----------------------------------------------------------------------------------
(m3 <- matrix(letters, ncol = 10, nrow = 10))


## ----------------------------------------------------------------------------------
matrix.zero <- matrix(0, nrow=5, ncol=5)
matrix.zero

diag(matrix.zero) = 1
matrix.zero


## ----------------------------------------------------------------------------------
dim(matrix.zero)


## ----------------------------------------------------------------------------------
z <- 1:30
matrix.z <- matrix(z, ncol=5)
matrix.z

#Display only the fifth row of matrix.a
matrix.z[5, ]  

#Display only the third column
matrix.z[ , 3] 

#Display the third and fourth columns
matrix.z[ , 3:4]

#Display the second and fourth columns
matrix.z[ , c(2,4)]

#Display the first and fifth rows
matrix.z[c(1,5), ]

#Change the value/s of an element or elements in the matrix
#Change all of column 1 to zeros
matrix.z[ , 1] = 0
matrix.z

#Change all of row 3 to 50
matrix.z[3, ] = 50
matrix.z

#Change row 1, column 4 to 999
matrix.z[1, 4] = 999
matrix.z


## ----------------------------------------------------------------------------------

matrix.a <- matrix(1:25, nrow=5)
matrix.a

matrix.b <- matrix(50:74, nrow=5)
matrix.b

#Combine matrix a and b by column.
matrix.c <- cbind(matrix.a, matrix.b)
matrix.c

#Combine matrix a and b by row.
matrix.d <- rbind(matrix.a, matrix.b)
matrix.d

#Combine column 1 in matrix a with column 1 of matrix b.
matrix.col1 <- cbind(matrix.a[,c(1)],
                     matrix.b[,c(1)])
matrix.col1

#Combine row 5 in matrix a with row 3 in matrix b.
matrix.row <- rbind(matrix.a[c(5),], 
                    matrix.b[c(3),])
matrix.row


## ----------------------------------------------------------------------------------
matrix.a <- matrix(1, ncol=5, nrow=5)
matrix.a

matrix.b <- matrix(5, ncol=5, nrow=5)
matrix.b

matrix.a - matrix.b
matrix.b - matrix.a
matrix.a + matrix.b


## ----------------------------------------------------------------------------------
matrix.c <- matrix(3, ncol=4, nrow=5)
matrix.c

dim(matrix.c)

matrix.d <- matrix(7, ncol=5, nrow=3)
matrix.d

dim(matrix.d)


## ----eval = F----------------------------------------------------------------------
## 
## matrix.c %*% matrix.d
## 
## matrix.d %*% matrix.c


## ----------------------------------------------------------------------------------
# a vector 1 to 27
v <- 1:27

# create an array, 3 x 3 x 3
(a <- array(v, dim = c(3, 3, 3)))

# array index is r, c, m (row, column, matrix), e.g., row 1 column 2 matrix 3:
(a[1,2,3])


## ----------------------------------------------------------------------------------
(l <- list("a", 1, TRUE))


## ----------------------------------------------------------------------------------
(l <- list("a", 
           1:20, 
           as.logical(c(0,1,1,0))))


## ----------------------------------------------------------------------------------
# show the data types
(lapply(X = l, FUN = class))

# mean, maybe?
(lapply(X = l, FUN = function(x) {mean(x)}))


## ----------------------------------------------------------------------------------
(income <- c("<$10,000"
, "$10,000-$49,999"
, "$50,000-$99,999"
, "$100,000-$200,000"
, ">$200,000"))


## ----------------------------------------------------------------------------------
sort(income)


## ----------------------------------------------------------------------------------
# create a factor from income and set the levels
(income_factor <- factor(x = rep(income, 2), levels = income))

# sort again
(sort(income_factor))


## ----------------------------------------------------------------------------------
# income levels 
inc <- c("<$10,000"
, "$10,000-$49,999"
, "$50,000-$99,999"
, "$100,000-$200,000"
, ">$200,000")

BMI <-  data.frame(
   sid = c("A1001", "A1002", "B1001"),
   gender = c("Male", "Male","Female"), 
   height_cm = c(152, 171.5, 165), 
   weight_kg = c(81, 93, 78),
   age_y = c(42, 38, 26),
   income = factor(c("$50,000-$99,999", "$100,000-$200,000", "<$10,000"), levels = inc)
)
print(BMI)


## ----echo = T, eval = T------------------------------------------------------------
ls()


## ----------------------------------------------------------------------------------
x     #Original object that we created above.
x <- 7  #New object with same name
x     #New object


## ----------------------------------------------------------------------------------
rm(list=ls())


## ----------------------------------------------------------------------------------
f_square <- function(x){
    x^2
}


## ----------------------------------------------------------------------------------
f_square_2 <- function(x){
    message("input:")
    print(x)
    message("output:")
    x^2
}

f_square_2(c(1,2,3))


## ----eval=FALSE--------------------------------------------------------------------
## x^2


## ----------------------------------------------------------------------------------
f_square_3 <- function(x, verbose = FALSE){
    # only run the next lines if verbose is true
    if(verbose){
        message("input:")
        print(x)
        message("output:")
    }
    x^2
}

f_square_3(x = c(1,2,3))
f_square_3(x = c(1, 2, 3), verbose = TRUE)


## ----------------------------------------------------------------------------------
f_square_3(x = c(1, 2, 3), verbose = TRUE)


## ----------------------------------------------------------------------------------
f_square <- function(x){
    x^2
}
f_square(3)


## ----------------------------------------------------------------------------------
f_square(c(1,2,3))


## ----------------------------------------------------------------------------------
f_compare <- function(x, y){
    # either missing?
    if(nargs() != 2)
        return("invalid number of arguments")
    # numeric?
    if(!is.numeric(x) | !is.numeric(y)){
        return(sprintf("%s or %s is not numeric.", x, y))
    }
    # comparisons follow
    if(x > y){
        return(sprintf("%s is greater than %s", x, y))
    } 
    if(x < y) {
        return(sprintf("%s is less than %s", x, y))
    }
    if(x == y){
        return(sprintf("%s equals %s", x, y))
    }
}


## ----------------------------------------------------------------------------------
f_compare(1)

f_compare(1, 2)

f_compare(2, 1)


## ----------------------------------------------------------------------------------
for (i in head(letters, 5)){
    print(i)
}


## ----------------------------------------------------------------------------------
for(i in 1:10){
    message(paste(i, "squared equals", i^2))
}


## ----------------------------------------------------------------------------------
# take the first 5 state names
states_5 <- head(state.name, 5)

# iterate over those
for (i in 1:length(states_5)){
    s <- states_5[i]
    message(paste0(i, ": ", s))
}


## ----while-------------------------------------------------------------------------
## Create vector with two initial terms.
sequence <- c(1, 1)

print(sequence[1])
print(sequence)
while(sequence[length(sequence)] +
          sequence[length(sequence) - 1] < 100){
  term_no <- length(sequence) + 1
  
  sequence <- c(sequence,
                sequence[term_no - 1] + sequence[term_no - 2])
  print(sequence)
}


