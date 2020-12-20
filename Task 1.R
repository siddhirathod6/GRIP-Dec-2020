#GRIP Task 1 Prediction Using Supervised ML with R
# Siddhi Rathod
#Importing the dataset
data=read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
data
#Assinging variable to data
hour=data$Hours
score=data$Scores
# Fitting the Model
model=lm(score~hour)
model
#Plotting the Model
plot(hour,score,main="Hour Vs Score",ylab="Score",xlab="Hour Studied",col="blue")
abline(model,col="red")
#Comparing Actual and Predicted Scores
actual=score
hour=data.frame(hour)
predicted=predict(model,hour)
cbind(actual,predicted)
#Predicted Score if Student studied for 9.25hrs/day
test=data.frame(hour=9.25)
predict(model,test)