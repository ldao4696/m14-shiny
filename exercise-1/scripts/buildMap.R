# BuildMap file: write function that returns a map

# This function requires plotly
library(plotly)

# BuildMap function: fill this in with a function that returns a map:
# Try parameterize a few options, such as the title
# I suggest: https://plot.ly/r/bubble-maps/
BuildMap <- function(data) {
 
  g <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showlakes = TRUE,
    lakecolor = toRGB('white')
  )
  
  p <- plot_geo(df, locationmode = 'USA-states') %>%
    add_trace(
      z = ~total.exports, text = ~hover, locations = ~code,
      color = ~total.exports, colors = 'Purples'
    ) %>%
    colorbar(title = "Millions USD") %>%
    layout(
      title = '2011 US Agriculture Exports by State<br>(Hover for breakdown)',
      geo = g
    )
  
  return(p)
}
