sum=0
count=0
for grade in open('grade.txt'):
    print(grade, end='')
    sum=sum+int(grade)
    count=count+1
average =sum/count
print("Aaverage:"+str(average))
