library(shiny)
source("abstuff.R")

# retrieve the linear regression model from file
getModel("ABmodel.lm")

# Define server logic for slider and radio button input values
shinyServer(function(input, output) {  

    output$estAge<-renderPrint(ageAbalone(as.character(input$sex),
                                          input$length,
                                          input$diameter,
                                          input$height,
                                          input$weight))
})