library(maps)
library(mapproj)
source("helpers.r")
counties <- readRDS("App-3/data/counties.rds")

# server.R

shinyServer(
  function(input, output) {
    
    output$map <- renderPlot({
      
      percent_map( #some arguments )
    })
    
  }
)

