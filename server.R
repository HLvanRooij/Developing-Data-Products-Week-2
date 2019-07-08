#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)
library(dplyr)


data <- read.csv("https://simplemaps.com/static/data/country-cities/nl/nl.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
   


  output$map <- renderLeaflet({ 
      data %>% 
          leaflet() %>% 
          addTiles() %>% 
          addMarkers(lat = data$lat, lng = data$lng, popup = data$city , clusterOptions = markerClusterOptions())
    }) 

  
    
})
