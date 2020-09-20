library(shiny)

shinyUI(fluidPage(
  theme = shinythemes::shinytheme("darkly"),
  titlePanel(
    h1("Stock price", align = "center")
  ),

  sidebarLayout(
    sidebarPanel(
      helpText("Input a valid stock symbol and date range to obvserve the price"),
      helpText("Information source is from yahoo finance. More information https://finance.yahoo.com/most-active/"),

      textInput("symb", "Symbol", "TSLA"),

      dateRangeInput("dates",
                     "Date range",
                     start = "2020-01-01",
                     end = as.character(Sys.Date())),


     selectInput("chart",
                 label = "Chart type",
                 choices = c("Candlestick" = "candlesticks",
                             "Matchstick" = "matchsticks",
                             "Bar" = "bars",
                             "Line" = "line"),
                 selected = "Line"),

     selectInput("theme",label= "Chart Theme:",
                        choices = c("White" = "white",
                               "White Mono" = "white.mono",
                               "Black" = "black",
                               "Black Mono" = "black.mono",
                               "Beige" = "beige"),
                 selected = "Line"),


   checkboxGroupInput("tech",
                      label=h5("Technical Indicators:"),
                      choices=list(
                        "Bollinger Bands"="addBBands()",
                        "Exponential Moving Average"="addEMA()",
                        "Smooth Moving Average"="addSMA()",
                        "Moving Average Convergence Divergence"="addMACD()",
                        "Relative Strength Index"="addRSI()",
                        "Parabolic Stop and Reversal"="addSAR()",
                        "Stochastic Momentum Indicator"="addSMI()",
                        "Volume"="addVo()",
                        "William's %"="addWPR()"))



    ),

    mainPanel(
      plotOutput("plot")))))
