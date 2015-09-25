library(shiny)

#####################################################
# This source file contains the functionality to apply
# the linear regression model derived from the Abalone
# Age dataset to the input values from the shiny app
#####################################################

getModel<-function(filename){
   library(caret)
   load(filename)
# note the model is visible to the other functions in the source   
   modelUsed<<-lmFit
}

# this function applies the model above to the input data 
ageAbalone<-function(Sex="M",L=90,D=70,H=20,wt=110){
   nuDF<-data.frame(rbind(c(L,D,H,wt)))
   nuDF<-cbind(Sex,nuDF)
   names(nuDF)<-c("Sex","Length","Diameter","Height","Whole_wt")  
   vb<-(predict(modelUsed,newdata=nuDF))
   return(round(vb,0))
}