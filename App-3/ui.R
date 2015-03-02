shinyUI(fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel( helpText("create deomographic maps with information from the 
                  2010 US Census"),
                  
                  selectInput("PercRace", 
                              label = "Choose a variable to display",
                              choices = list("Percent White" = 1, 
                                             "Percent Black" = 2,
                                             "Percent Hispanic"= 3, 
                                             "Percent Asian" = 4),
                              selected = 1),
                  
                  sliderInput("IntrestSlider", 
                              label = "Range of interest",
                              min = 0, 
                              max = 100, 
                              value = c(0,100)
    )),
    
    mainPanel(textOutput("Text1"),
              textOutput("Text2"))
  )
  
))