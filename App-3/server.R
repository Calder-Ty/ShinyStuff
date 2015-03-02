library(maps)
library(mapproj)
source("helpers.r")
counties <- readRDS("Data/counties.rds")

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
                       "Percent White" = "Dark Green",
                       "Percent Black" = "Black",
                       "Percent Hispanic" = "Orange",
                       "Percent Asian" = "violet")
      legend <- switch(input$var,
                       "Percent White" = "% White",
                       "Percent Black" = "% Black",
                       "Percent Hispanic" = "% Hispanic",
                       "Percent Asian" = "% Asian")
      
      percent_map( var = data, 
                   color = colors, 
                   legend.title = legend, 
                   max = input$range[2], 
                   min = input$range[1])
    })
    
  }
)

