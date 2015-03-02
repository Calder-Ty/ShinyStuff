shinyUI(fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel( "create deomographic maps with information from the 
                  2010 US Census",
                  br(),
                  selectInput("PercRace", label = h4("Choose a variable to display"),
                              choices = list("Percent White" = 1, "Percent Black" = 2,
                                             "Percent Hispanic"= 3, "Percent Asian" = 4)),
                  br(),
                  sliderInput("IntrestSlider", label = h4("Range of interest"),
                              min = 0, max = 100, value = c(0,100)
    ),
    mainPanel(
      ))
  )
  
)