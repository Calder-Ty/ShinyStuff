library(maps)
library(mapproj)
source("helpers.r")

shinyServer(function(input, output) {
    
  output$Text1 <- renderText({
    paste("You have selected", input$PercRace)
  })
  output$Text2 <- renderText({
    paste("You have chosen a range from", input$IntrestSlider[1],
         "to", input$IntrestSlider[2])
  })
})