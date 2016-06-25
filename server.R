library(shiny)
EruptionLength <- function(WaitingTime) -1.874 + 0.0756 * WaitingTime

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$WaitingTime})
    output$Prediction <- renderPrint({EruptionLength(input$WaitingTime)})
  }
) 