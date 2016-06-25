library(shiny)
shinyUI(pageWithSidebar(
# Prediction of Duration of Old Faithful Geyser Eruption 
  headerPanel("Eruption Duration"),
  sidebarPanel(
    numericInput('WaitingTime', 'Waiting Time (in mins)', 70, max = 180, min = 40, step = 5 ),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Prediction Results'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('Which Resulted in a Prediction of (in mins)'),
    verbatimTextOutput("Prediction"),
    h3('Application Functionality'),
    h4('The application takes a input Waiting Time which can be selected 
        from a dropdown which provides option of selecting values from 40 to 180
        which can be selected in 5 units increments using the toggle button. Other
        Waiting Time values can be inputted manually. After inputting the Waiting Time
        and clicking the Submit button, the algorithm automatically calculates and 
        displays a prediction value for Eruption duration as well as the value for 
        Waiting time that was inputted by the user') )
))


