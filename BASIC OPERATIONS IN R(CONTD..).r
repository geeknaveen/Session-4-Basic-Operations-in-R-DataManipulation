#Session 4: Basic Operations in R and Data Manipulation:::::: 

#Create the vectors 
# (a) (2, 3, . , 29, 30) 
x <- seq(2, 30, 1)
x

# (b) (30, 29, .  , 2) 
y <- seq(30, 2, -1)
y

# (c) (1, 2, 3, .. , 29, 30, 29, 28,    , 2, 1)
x <- c(seq(1, 30, 1), seq(29, 1, -1))
x

# (d) (4, 6, 3) and assign it to the name dev. 
dev<- c(4, 6, 3)
dev

# For parts (e), (f) and (g) . 
# (e) (5, 6, 7, 5, 6, 7,    , 5, 6, 7) where there are 10 occurrences of 5. 
x<-rep(5:7,times = 10) 
x
  
# (f) (5, 6, 7, 5, 6, 7,    , 5, 6, 7, 5) where there are 11 occurrences of 5, 10 
# occurrences of 6 and 10 occurrences of 7. 
z<- rep(5:7,l=31)
z
#or 
x <- c(rep(5:7, 10), 5)
x

# (g) (4, 4,    , 4, 6, 6,    , 6, 3, 3,    , 3) where there are 10 occurrences of 4, 20 occurrences of 6 and 30  
# occurrences of 3. 
dev<- c(4, 6, 3)
x<-rep(dev,times=c(10,20,30))
x

#2. Create a vector of the values of eX sin(x) at x = 3, 3.1, 3.2,    , 6. 
x <- seq(3, 6, by=0.1)
y <- exp(x)*sin(x)
x
y

# 3) Execute the following lines which create two vectors of random integers which are chosen with  
# replacement from the integers 0, 1, : : : , 999. Both vectors have length 250.
?sample
set.seed(100) 
x <- sample(0:999, 250, replace=T) 
y <- sample(0:999, 250, replace=T) 
x
y

# (a) Identify out the values in y which are > 500.
ex3a <- y[c(y>500)==TRUE]
ex3a 
#or
ex3a<-y[y>500]
ex3a

#(b) Identify the index positions in y of the values which are > 700? 
ex3b <- which(y>700)
ex3b
#or
ex3b<-(1:length(y))[y>700] 
ex3b

#(c) What are the values in x which are in Same index position to the values in y which are > 400?  
ex3c<-x[y>400]
ex3c

#(d) How many values in y are within 200 of the maximum value of the terms in y? 
sum(y>max(y)-200)
#or
ex3d <- length(y[y>= (max(y)-200)])
ex3d

#(e) How many numbers in x are divisible by 2? 
ex3e <-length(x[x%%2])
ex3e
#or
ex3e1 <-sum(x%%2==0)
ex3e1   

#(f) Sort the numbers in the vector x in the order of increasing values in y. 
ex3f <- x[order(y)]
ex3f

#(g) Create the vector (x1 + 2x2 - x3; x2 + 2x3 -x4 ,,  xn???2 + 2xn???1 - xn). 
ex3g <-x[-c(249,250)] + 2*x[-c(1,250)]-x[-c(1,2)]
ex3g
# or, for an answer which works whatever the length of x,
xVecLen <- length(x)
x[-c(xVecLen-1,xVecLen)]+2*x[-c(1,xVecLen)]-x[-c(1,2)]

# 4. Use the function paste to create the following character vectors of length 30: 
# (a) ("Label 1", "Label 2", ....., "Label 30"). 
ex4.a.result <- paste("Label", c(1:30), sep =" ", collapse = NULL)
ex4.a.result

# (b) ("FN1", "FN2", ..., "FN30"). 
ex4.b.result <- paste("FN", c(1:30), sep = "", collapse = NULL)
ex4.b.result

# 5) Compound interest can be computed using the formula 
# A = P × (1 + R/100)n, where P is the original money lent, A is what it amounts to in n years at R percent 
# per year interest. 
# Write R code to calculate the amount of money owed after n years, where n changes from 1 to 15 in 
# yearly increments, if the money lent originally is 10000 Rupees and the interest rate remains constant 
# throughout the period at 11.5%. 

  P<-10000  #P is the original money lent
  R<-11.5   #Interest rate per year
  A<-0      #A is what it amounts to in n years
  n<-15     #no. of years
  # Using for loop to calculate amount of money owed after n years
  for (i in n){
    A <- P * (1+R/100)^(1:n)
    print(A) #Printing value of A
    }
  
#6) Generate the following matrices. 
#a
ex6_result<- matrix(c(1:5,101:105,201:205,301:305),nrow = 5,ncol = 4)
ex6_result


