#HW2 PART1
#Q1 
x <- seq(5,-11,-0.3)
x

#Q2
x <-rev(x)
x

#Q3
v1 <- rep(c(-1,3,-5,7,-9),each=10,times=2)
sort(v1)
length(v1)


#Q4
y <- rep(c(5.3),each=3)
l_v1 <- length(v1)
v2 <- c(6:12, y,-3, seq(from=102,to=l_v1,length.out=9))
v2
length(v2)

#Q5
length(v2) == 20

#HW PART2
#Q1
a <- seq(3,6,length.out=5)
b <- rep(c(2,-5.1,-33),each=2)
c <- (7/42) + 2
v3 <- c(a,b,c)
v3

#Q2
v3_extract <- c(v3[1],v3[length(v3)])
v3_extract

#Q3
v3_omitted <- v3[-c(1,length(v3))]
v3_omitted

#Q4
v3_reconstruct <- c(v3_extract[1],v3_omitted,v3_extract[2])
v3_reconstruct

#Q5
v3 <- sort(v3)
v3

#Q6
reversed_v3 <- v3[length(v3):1]
reversed_v3 == sort(v3,decreasing = TRUE)

#Q7
p1 <- rep(v3_omitted[3], each=3)
p2 <- rep(v3_omitted[6], each=4)
p3 <- rep(v3_omitted[length(v3_omitted)], each=1)
v4 <- c(p1,p2,p3)
v4

#Q8
v5 <- v3
v5[c(1,5:7,length(v5))] <- seq(99,95,-1)
v5
