library(shiny)

shinyUI(pageWithSidebar(
  
  #  Application title
  headerPanel("Abelone age determination"),
  
 
  
  # Sidebar with sliders that demonstrate various available options
  sidebarPanel(
    radioButtons("sex", "Sex - determined by inspection of gonads",
                 c("male" =   "M",
                   "female" = "F",
                   "infant" = "I")),
    # Simple integer interval
    sliderInput("length", "Length of shell(mm):", 
                min=0, max=170, value=85),
    
    # Decimal interval with step value
    sliderInput("diameter", "Diameter of shell(mm):", 
                min=0, max=130, value=65),
    
    # Specification of range within an interval
    sliderInput("height", "Height of shell(mm):",
                min=0, max=60, value=35),
    
    # Specification of range within an interval
    sliderInput("weight", "Live weight(g):",
                min=0, max=450, value=200)),
    

  
  # Show a table summarizing the values entered
  mainPanel(
    h3('The results'),
    h4('Estimated age (Years)'),
    verbatimTextOutput("estAge")
    
    )))



