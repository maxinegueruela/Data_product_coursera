# Data_product_coursera

## Introduction


This assignment is from the Coursera developing data products final course Project.
The final object is to create a shiny app application  <a href="http://www.shinyapps.io/">Shiny web aplitacion</a> () to reproduce and modify some information. In this work I have decided to show the stock price of one of the many stocks that are available from yahoo finance (finance.yahoo.com) 


## Description

The application lets the user to type one stock name (example Tesla which its technical name is “TSLA”) and then select the date period to analyse. Furthermore, the app has enveded several technical indicators normally used to identy trends in stock evolution. Some of the indicators are Bollinger bands, exponential moving average, etc.
The data is automatically loaded from yahoo finance and the app is reactive, that is, whenever the user change the settings, the app uptdates the plot.
The quantmode package is used to load the information and process it. 


## Usage


The user should first decide which stock to see. The app loads first Tesla stock (“TSLA”) and the user can type other listed in yahoo finance. For example, this site has the more active stocks https://finance.yahoo.com/most-active/. Some of the most common stocks in 2020 are Amazon (“AMZN”), Apple (“AAPL”) and Google or Alphabet (“GOOG”) among many others.
After typing the decided stock name, the user can select the date range from which the app will show prices. Then, there are 8 technical indicators that can be added to the plot chart. These are:

*	Exponential Moving Average
*	Smooth Moving Average
*	Moving Average Convergence Divergence
*	Relative Strength Index
*	Parabolic Stop and Reversal
*	Stochastic Momentum Indicator
*	Volume
*	William’s %


### More information of stocks and quantmode package



*	Exponential Moving Average. Link: https://en.wikipedia.org/wiki/Moving_average
*	Smooth Moving Average. Link: https://en.wikipedia.org/wiki/Exponential_smoothing
*	Moving Average Convergence Divergence. Link: https://en.wikipedia.org/wiki/MACD
*	Relative Strength Index. Link: https://en.wikipedia.org/wiki/Relative_strength_index
*	Parabolic Stop and Reversal. Link: https://en.wikipedia.org/wiki/Parabolic_SAR
*	Stochastic Momentum Indicator. Link:  https://en.wikipedia.org/wiki/Stochastic_oscillator
*	Volume. Link: https://en.wikipedia.org/wiki/Volume_(finance)
*	William’s %. Link: https://en.wikipedia.org/wiki/Williams_%25R 

More information about the quantmode package in https://cran.r-project.org/web/packages/quantmod/quantmod.pdf








