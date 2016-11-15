# UI for scatterplot

# Create a shinyUI with a fluidPage layout
shinyUI(fluidPage(
  
  # Add a numbericInput to choose the number of observations
  numericInput('num', label = h3("Numeric Input"), value = 1),
  
  # Add a selectInput that allows you to select a color from a list of choices
  selectInput('Select', 'Pick a color:', 
              choices = list("Red" = 'red',"Blue" = 'blue',"Green" = 'green'), selected = 1 ),
  
  # Plot the output with the name "scatter"
  plotOutput("scatter")
  
))