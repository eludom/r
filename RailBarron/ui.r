library(shiny)

shinyUI(fluidPage(sidebarLayout(
  sidebarPanel(

    # use updateSelectizeInput() to generate options later
    selectizeInput('src', 'SRC', choices = NULL),

    # use updateSelectizeInput() to generate options later
    selectizeInput('dst', 'DST', choices = NULL)

  ),
  mainPanel(
    verbatimTextOutput('values')
  )
), title = 'Options groups for select(ize) input'))
