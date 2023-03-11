# 1)  Create a data frame and name it dframe. With the following variables:
  
  #person (Stan, Francine, Steve , Roger, Hayley, Klaus )

# sex=  (M, F, M , M , F , M )

# funny=(High, Med, Low , High , Med, Med)
# 
# Note that: person should be a character vector, sex should be a factor with levels F and M, 
# and funny should be a factor with levels Low, Med, and High
sex = c('M', 'F', 'M' , 'M' , 'F' , 'M')
funny = c('High', 'Med', 'Low' , 'High' , 'Med', 'Med')
dframe <- data.frame(person = c('Stan', 'Francine', 'Steve' , 'Roger', 'Hayley', 'Klaus'),
                      sex = factor(sex),
                      funny = factor(funny))
dframe
  

#  2)  Stan and Francine are 41 years old, Steve is 15, Hayley is 21, and Klaus is 60.
# Roger is extremely old—1,600 years. Append these data as a new numeric column variable in dframe called age.

dframe['age'] <- c(41,41,15,1600,21,60)
dframe 

#  3)  Use your knowledge of reordering the column variables based on column index positions to overwrite dframe, 
# - that is, the first column should be person, the second column age, the third column sex, and the fourth column funny.

colnames(dframe)
dframe <- dframe[,c(1,4,2,3)]
dframe

#  4) Write a single line of code that will extract from dframe just the names and ages of any records where the individual 
# is female and has a level of funniness equal to Med or High.

dframe[dframe$sex == 'F'&(dframe$funny == 'Med' | dframe$funny == 'High'),c('person','age')]

#  5) Write a single line of code to create male only subset data from dframe and remove the “sex” column:

dframe[dframe$sex == 'M',c('person','age','funny')]

