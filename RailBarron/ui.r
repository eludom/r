library(shiny)

shinyUI(fluidPage(sidebarLayout(
    sidebarPanel(
      titlePanel("Rail Barron Payoff Lookup"),
    # use updateSelectizeInput() to generate options later
    selectizeInput('src', 'Starting City', choices = NULL),

    # use updateSelectizeInput() to generate options later
    selectizeInput('dst', 'Ending City', choices = NULL)
        
  ),
  mainPanel(
    verbatimTextOutput('values')
  )
), title = 'Options groups for select(ize) input'))
