library(quantmod)


shinyServer(function(input, output) {


  output$plot <- renderPlot({
    data <- getSymbols(input$symb, src = "yahoo",
                       from = input$dates[1],
                       to = input$dates[2],
                       auto.assign = FALSE)


  # Create chart series plot

    # Find if the user selected one or more technical indicators
    if (length(input$tech)!=0){
      chartSeries(data, TA=paste(input$tech, collapse=";"), name=paste("Symbol:", input$symb), type=input$chart, up.col='green', dn.col='red', theme=chartTheme(input$theme))
    }
    if (length(input$tech)==0){
      chartSeries(data, tech=NULL, name=paste("Symbol:", input$symb), type=input$chart, up.col='green', dn.col='red', theme=chartTheme(input$theme))
    }

    })

})
