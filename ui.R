#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Leaflet Map Assignment Week 2"),
  
  # Subtitle 
  mainPanel("08 July 2019"),
  mainPanel("Jeroen van Rooij"), 
  
  #Make Map 
  mainPanel(
      leafletOutput("map", width = "800", height = "800")
      
  )
))
