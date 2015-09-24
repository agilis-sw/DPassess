library(shiny)
source("abstuff.R")
getModel("ABmodel.lm")

# Define server logic for slider examples
shinyServer(function(input, output) {  
  # Show the values using an HTML table
    output$vals<-renderPrint(paste(input$sex,input$length,input$diameter,input$height,input$weight,sep="|"))
    output$estAge<-renderPrint(ageAbelone(as.character(input$sex),input$length,input$diameter,input$height,input$weight))
})