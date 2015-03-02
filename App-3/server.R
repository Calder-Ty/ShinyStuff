shinyServer(function(input, output) {
  
  output$Text1 <- renderText({
    paste("You have selected", input$PercRace)
  })
  Output$Text2 <- renderText({
    paste("You have chosen a range from", input$IntrestSlider$value[1],
         "to", input$IntrestSlider$value[2])
  })
})