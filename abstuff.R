library(shiny)




getModel<-function(filename){
   library(caret)
   load(filename)
   modelUsed<<-lmFit
   print(class(modelUsed))
}

ageAbelone<-function(Sex="M",L=90,D=70,H=20,wt=110){
  # print(class(Sex))
   nuDF<-data.frame(rbind(c(L,D,H,wt)))
   nuDF<-cbind(Sex,nuDF)
  # nuDF[1,1]<-as.character(nuDF[1,1])
   names(nuDF)<-c("Sex","Length","Diameter","Height","Whole_wt")
#   print(length(names(nuDF)))
#     print(class(nuDF[1,i]))
 #  }  
  vb<-(predict(modelUsed,newdata=nuDF))
  return(round(vb,0))
}