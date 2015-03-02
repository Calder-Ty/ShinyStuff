library(maps)
library(mapproj)
source("helpers.r")
<<<<<<< HEAD
counties <- readRDS("App-3/data/counties.rds")

# server.R

shinyServer(
  function(input, output) {
    
    output$map <- renderPlot({
      
      data <- switch(input$var, 
                     "Percent White" = counties$white,
                     "Percent Black" = counties$black,
                     "Percent Hispanic" = counties$hispanic,
                     "Percent Asian" = counties$asian)
      colors <- switch(input$var,
                       "Percent White" = "Green",
                       "Percent Black" = "Black",
                       "Percent Hispanic" = "Orange",
                       "Percent Asian" = "violet")
      
      percent_map( var = data, 
                   color = colors, 
                   legend.title = input$var, 
                   max = input$range[1], 
                   min = input$range[2])
    })
    
  }
)

=======

shinyServer(function(input, output) {
    
  output$Text1 <- renderText({
    paste("You have selected", input$PercRace)
  })
  output$Text2 <- renderText({
    paste("You have chosen a range from", input$IntrestSlider[1],
         "to", input$IntrestSlider[2])
  })
})
>>>>>>> 68838c706136bc6ea2e650a94cd89cfa58d62f17
