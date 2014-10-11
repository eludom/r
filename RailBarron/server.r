library(shiny)

shinyServer(function(input, output, session) {

  # use regions as option groups    

  payoffTable = read.csv("rb.csv",row.names=1)
  names <- names(payoffTable)
  names <- setNames(names,names)
  
  updateSelectizeInput(session, 'src', choices = list(
    AllRegions = names
  ), selected = 'Albany')

  updateSelectizeInput(session, 'dst', choices = list(
    AllRegions = names
  ), selected = 'Albany')

  output$values <- renderPrint({
    list(src = input$src,dst = input$dst,payoff=payoffTable[input$src,input$dst],payoffTable=payoffTable)
  })
})
