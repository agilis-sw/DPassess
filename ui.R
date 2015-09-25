library(shiny)

shinyUI(pageWithSidebar(
  
  #  Application title
  headerPanel("Abalone age determination"),
  
 
  
  # Sidebar with sliders that demonstrate various available options
  sidebarPanel(
    radioButtons("sex", "Sex - determined by visual inspection",
                 c("male - testes visible" =   "M",
                   "female - egg sac visible" = "F",
                   "immature" = "I")),
    # Simple integer interval
    sliderInput("length", "Length of shell(mm):", 
                min=30, max=170, value=85),
    
    # Decimal interval with step value
    sliderInput("diameter", "Diameter of shell(mm):", 
                min=25, max=130, value=65),
    
    # Specification of range within an interval
    sliderInput("height", "Height of shell(mm):",
                min=5, max=60, value=35),
    
    # Specification of range within an interval
    sliderInput("weight", "Live weight(g):",
                min=10, max=450, value=200)),
    

  
  # Show a table summarizing the values entered
  mainPanel(
    h3('Introduction'),
    
    tags$p('If you are harvesting live abalone there are major fines/confiscation of catch
      for taking animals that are too young. Costly, especially if you are also 
      concerned with the sustainability of the shell beds.'),
    
    tags$p('The direct way of determining the age of an abalone involves slicing and staining 
      the shell and looking at the pattern of rings through a microscope. This has a number of
      drawbacks - the most obvious being that the abalone is both dead, and commercially
      unusable'),

    tags$p('A model relating a number of measurements and observations that can be made on live 
      shells to the age (determined by growth rings) has been generated. This model powers
      the application presented here. The data used for the application was generated in the 
      following study:'),
    
    helpText(   a("Abalone Data Set",     href="https://archive.ics.uci.edu/ml/datasets/Abalone"),
    
      tags$p('Take a freshly harvested abalone and look at the underside. If you can see testes
             or egg sacs, you know if it is male or female. If you can not it is still immature.
             Use calipers to measure the longest axis of the shell (length), the width (diameter) 
             and the height from the underside the the top of the shell. Next weigh the animal.
             Input the data by using the widgets in the panel on the left.' ),
      tags$p('Eh voila! An estimate of the age of the animal is displayed. And if it is too young,
               you can just put it back!'),
      tags$b('Please note: this is a PROGRAMMING EXERCISE and cannot be used to age abalone shells!'),
      
    h3('The results'),
    h4('Estimated age (Years)'),
    verbatimTextOutput("estAge")
    
    ))))