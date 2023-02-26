

library(yaml)
library(ggplot2)
library(plotly)

chart1<-INFLUENZA_VE_TESTED_REPORT_CHART_1
Weeks <- sapply(chart1["Week"],as.character)

p <- plot_ly(x = ~Weeks, y = ~chart1$`Total B`, type = 'bar', name = 'Total B') %>%
  add_trace(x = ~Weeks, y = ~chart1$`Total A`, name = 'Total A', type = 'bar') %>%
  add_trace(x= ~Weeks, y = ~chart1$`Percent Positive A`, name = 'percent positive A', 
            type = 'scatter', mode = 'lines', 
            line = list(color = 'rgb(205, 12, 24)', width = 4, dash = 'dot'), 
            yaxis = 'y2') %>%
  add_trace(x= ~Weeks, y = ~chart1$`Percent Positive B`, name = 'percent positive B', 
            type = 'scatter', mode = 'lines', 
            line = list(color = 'rgb(22, 96, 167)', width = 4, dash = 'dot'), 
            yaxis = 'y2') %>%
  add_trace(x= ~Weeks, y = ~chart1$`% Positive`, name = '% positive',
            type = 'scatter', mode = 'lines', 
            line = list(color = 'rgb(22, 96, 167)', width = 4), 
            yaxis = 'y2') %>%
  layout(title = 'Influenza Positive Test reported to CDC by US clinical Laboratories',
    xaxis = list(title = "Week", tickangle = 45),
    yaxis = list(side = 'left', title = 'number of positive specimens', showgrid = FALSE, 
                 zeroline = FALSE), 
    yaxis2 = list(side = 'right', overlaying = 'y', title = 'percent positive', 
                  showgrid = FALSE, zeroline = FALSE, nticks = 15), barmode = 'stack')

p



chart2 <- POSITIVE_TESTED_CHART_2
names(chart2)
 
q <- plot_ly(x = ~Weeks, y = ~chart2$BYAM, type = 'bar', name = 'B(Yamagata Lineage') %>%
  add_trace(x = ~Weeks, y = ~chart2$BVIC, name = 'B(Victoria Lineage)', type = 'bar') %>%
  add_trace(x = ~Weeks, y = ~chart2$B, name = 'B(Lineage not performed)', type = 'bar') %>%
  add_trace(x = ~Weeks, y = ~chart2$`A(H3N2v)`, name = 'H3N2v', type = 'bar') %>%
  add_trace(x = ~Weeks, y = ~chart2$`A(H3)`, name = 'A(H3N2)', type = 'bar') %>%
  add_trace(x = ~Weeks, y = ~chart2$`A (H1N1)pdm09`, name = 'A(H1N1)pdm09', 
            type = 'bar') %>%
  add_trace(x = ~Weeks, y = ~chart2$`A(Subtyping not performed)`, 
            name = 'A(Subtyping not performed)', type = 'bar') %>%
  layout(title = 'Influenza Positive Test reported to CDC by US public health Laboratories',
         xaxis = list(title = "Week", tickangle = 45),
         yaxis = list(side = 'left', title = 'number of positive specimens', 
                      showgrid = FALSE, zeroline = FALSE),
         barmode = 'stack')

q


chart6 <- CHART_6_LIKELINESS

names(chart6)

Weeks6 <- c("01-40", "02-41", "03-42", "04-43", "05-44", "06-45", 
            "07-46", "08-47","09-48", "10-49", "11-50", "12-51", "13-52", 
           "14-01","15-02", "16-03", "17-04", "18-05", "19-06", 
           "20-07", "21-08", "22-09", "23-10", "24-11", "25-12",
           "26-13", "27-14", "28-15", "29-16", "30-17", "31-18", "32-19", "33-20",
           "34-21", "35-22", "36-23", "37-24","38-25", "39-26", "40-27", "41-28", 
           "42-29", "43-30", "44-31", "45-32", "46-33", "47-34", "48-35",
           "49-36", "50-37", "51-38")

r <- plot_ly(x = Weeks6, y = ~chart6$`ILI(17-18)`, name = '2017-18 season', 
             type = 'scatter', mode = 'lines',
             line = list(color = 'rgb(205, 12, 24)', width = 4)) %>%
  add_trace(x = Weeks6, y = ~chart6$baseline, name = 'National Baseline', 
            type = 'scatter', mode = 'lines', line = list(color = 'black', 
                                                          width = 4, dash = 'dash')) %>%
  add_trace(x = Weeks6, y = ~chart6$`ILI(9-10)`, name = '2009-10 season',
            type = 'scatter', mode = 'lines', line = list(shape = 'spline', 
                                                          color = 'grey', width = 2)) %>%
  add_trace(x = Weeks6, y = ~chart6$`ILI(11-12)`, name = '2011-12 season',
            type = 'scatter', mode = 'lines', line = list(color = 'green', width = 2)) %>%
  add_trace(x = Weeks6, y = ~chart6$`ILI(14-15)`, name = '2014-15 season',
            type = 'scatter', mode = 'lines', line = list(color = 'purple', width = 2)) %>%
  add_trace(x = Weeks6, y = ~chart6$`ILI(15-16)`, name = '2015-16 season',
            type = 'scatter', mode = 'lines', line = list(color = 'orange', width = 2)) %>%
  add_trace(x = Weeks6, y = ~chart6$`ILI(16-17)`, name = '2016-17 season',
            type = 'scatter', mode = 'lines', line = list(color = 'blue', width = 2)) %>%
  layout(title = 'Influenza like Illness plot by season',
         xaxis = list(title = "Week", showgrid = FALSE, zeroline = FALSE, nticks = 51),
         yaxis = list(side = 'left', title = '% of visited for ILI', showgrid = TRUE, 
                      zeroline = FALSE))
         



########################################################################################################################################################
## 
###########################################################################################################################################################
chart5 <- pediatricsdeath_Chart5
names(chart5)
Weeks5 <- sapply(chart5["WEEK NUMBER"],as.character)

t <- plot_ly(chart5, x = ~Weeks5, y = ~chart5$`PREVIOUS WEEKS DEATHS`, 
             type = 'bar', name = 'PREVIOUS WEEKS DEATHS') %>%
  add_trace( y = ~chart5$`CURRENT WEEK DEATHS`, name = 'CURRENT WEEK DEATHS') %>%
  layout(yaxis = list(title='Number of Influenza assciated pediatrics Deaths'), 
         barmode='stack', legend = list(x = 0.5, y = 0.9))   

t

#####################################################################################
## heat map using plotly
heatmap_data <- StateDatabyWeekforMap_2017_18week40_5
df5 <- data.frame(heatmap_data$STATENAME, heatmap_data$CODE, heatmap_data$B)

# give state boundaries a white border
l <- list(color = toRGB("white"), width = 2)
# specify some map projection/options
g <- list(
  scope = 'usa',
  projection = list(type = 'albers usa'),
  showlakes = TRUE,
  lakecolor = toRGB('white')
)

map1 <- plot_geo(df5, locationmode = 'USA-states') %>%
  add_trace(
    z = ~df5$heatmap_data.B, locations = ~df5$heatmap_data.CODE,
    color = ~df5$heatmap_data.B, colors = 'Purples'
  ) %>%
  colorbar(title = "flu activity") %>%
  layout(
    title = 'FLU ACTIVITY HEAT MAP OF UNITED STATES for week 4',
    geo = g
  )

map1


















