library(shiny)

shinyServer(function(input, output, session) {

  # Read in the base payoff table

  payoffTable = read.csv("rb.csv",row.names=1)
  allCityNames <- names(payoffTable)
  allCityNames <- setNames(allCityNames,allCityNames)

  # read in the regions (ok, hard code the regions)

  citiesByRegion = list(
      Northeast = c(
          "Albany"="Albany",
          "Baltimore"="Baltimore",
          "Boston"="Boston",
          "Buffalo"="Buffalo",
          "New York"="New York",
          "Philadelphia"="Philadelphia",
          "Pittsburgh"="Pittsburgh",
          "Portland, ME"="Portland, ME",
          "Washington"="Washington"),
      Southeast = c(
          "Atlanta"="Atlanta",
          "Charleston"="Charleston",
          "Charlotte"="Charlotte",
          "Chattanooga"="Chattanooga",
          "Jacksonville"="Jacksonville",
          "Knoxville"="Knoxville",
          "Miami"="Miami",
          "Mobile"="Mobile",
          "Norfolk"="Norfolk",
          "Richmond"="Richmond",
          "Tampa"="Tampa"),
      NorthCentral = c(
          "Chicago"="Chicago",
          "Cincinnati"="Cincinnati",
          "Cleveland"="Cleveland",
          "Columbus"="Columbus",
          "Detroit"="Detroit",
          "Indianapolis"="Indianapolis",
          "Milwaukee"="Milwaukee",
          "St Louis"="St Louis"),
      SouthCentral = c(
          "Birmingham"="Birmingham",
          "Dallas"="Dallas",
          "Fort Worth"="Fort Worth",
          "Houston"="Houston",
          "Little Rock"="Little Rock",
          "Louisville"="Louisville",
          "Memphis"="Memphis",
          "Nashville"="Nashville",
          "New Orleans"="New Orleans",
          "San Antonio"="San Antonio",
          "Shreveport"="Shreveport"),
      Plains = c(
          "Denver"="Denver",
          "Des Moines"="Des Moines",
          "Fargo"="Fargo",
          "Kansas City"="Kansas City",
          "Minneapolis"="Minneapolis",
          "Oklahoma City"="Oklahoma City",
          "Omaha"="Omaha",
          "Pueblo"="Pueblo",
          "St Paul"="St Paul"),
      Northwest = c(
          "Billings"="Billings",
          "Butte"="Butte",
          "Casper"="Casper",
          "Pocatello"="Pocatello",
          "Portland, OR"="Portland, OR",
          "Rapid City"="Rapid City",
          "Salt Lake City"="Salt Lake City",
          "Seattle"="Seattle",
          "Spokane"="Spokane"),
      Southwest = c(
          "El Paso"="El Paso",
          "Las Vegas"="Las Vegas",
          "Los Angeles"="Los Angeles",
          "Oakland"="Oakland",
          "Phoenix"="Phoenix",
          "Reno"="Reno",
          "Sacramento"="Sacramento",
          "San Diego"="San Diego",
          "San Francisco"="San Francisco",
          "Tucumcari"="Tucumcari")
  )

  updateSelectizeInput(session, 'src', choices = citiesByRegion, selected = 'Albany')
  updateSelectizeInput(session, 'dst', choices = citiesByRegion, selected = 'Albany')

  output$values <- renderPrint({
    list(src = input$src,dst = input$dst,payoff=payoffTable[input$src,input$dst],payoffTable=payoffTable)
  })
})

