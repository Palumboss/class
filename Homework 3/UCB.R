UCB =read.csv("/home/techfield/Documents/Class Work/Homework/Homework 3/ucb_admissions.csv")


################################################################################################


# Raw number of people that applied to each department

vec2= c()

for(i in seq(1,24,2)){
  tot = sum(UCB$Freq[i],UCB$Freq[i+1])
  vec2 = append(vec2,tot)
}
vec2
array2=array(vec2,dim = c(6,2))
arrayt=t(array2)



##################################################################################

## Total percentages accepted by departmet
vec=c()
vec1=c()



a=0
tot=0
for(i in seq(1,24,4)){
  a=UCB$Freq[i]+UCB$Freq[i+2]
  tot=a+tot
  vec=append(vec,tot)
  tot=0
  a=0
}

for(i in seq(1,24,4)){
  a=UCB$Freq[i]+UCB$Freq[i+1]+UCB$Freq[i+2]+UCB$Freq[i+3]
  tot=a+tot
  vec1=append(vec1,tot)
  tot=0
  a=0
}

AcceptedByDept=vec/vec1
print(AcceptedByDept)
matACC=matrix(AcceptedByDept)


R2=.19



#############################################################################################

## Percentages for each department by gender


for(i in seq(1,24,2)){
  x=UCB$Freq[i]/(UCB$Freq[i]+UCB$Freq[i+1])
  print(x)
}
x

for(i in seq(1,24,2)){
  x=UCB$Freq[i]/(UCB$Freq[i]+UCB$Freq[i+1])
  print(x)
}


##############################################################################################

## Total amount of Males vs Females


totalmale=0
totalfemale=0
totalMaccepted=0
totalFaccepted=0

#Total males
for(i in seq(1,24,4)){
  
  y=sum(UCB$Freq[i],UCB$Freq[i+1])
  totalmale=sum(y,totalmale)
}


#Total males accepted
for(i in seq(1,24,4)){
  y=UCB$Freq[i]
  totalMaccepted=sum(y,totalMaccepted)
}
i=0
#Total females that applied
for(i in seq(3,24,4)){
  y=sum(UCB$Freq[i],UCB$Freq[i+1])
  totalfemale=sum(y,totalfemale)
}

#Total females accepted
for(i in seq(3,24,4)){
  y=UCB$Freq[i]
  totalFaccepted=sum(y,totalFaccepted)
}

print(totalmale)
print(totalMaccepted)

percentMale=totalMaccepted/(totalMaccepted+totalFaccepted)
percentFemale=totalFaccepted/(totalMaccepted+totalFaccepted)

percentMale
percentFemale

print(totalfemale)
print(totalFaccepted)

totalpercentM = totalMaccepted/totalmale
totalpercentF = totalFaccepted/totalfemale

print(totalpercentF)

totalmale+totalfemale
totalmale/(totalmale+totalfemale)

print(totalpercentM)
print(totalpercentF)

################################################################################################

