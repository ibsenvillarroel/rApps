# Load R packages
library(shiny)
library(shinythemes)


# Define UI
ui <- fluidPage(theme = shinytheme("cerulean"),
                navbarPage(
                  # theme = "cerulean",  # <--- To use a theme, uncomment this
                  "Aplicacion en R",
                  tabPanel("Pestana 1",
                           sidebarPanel(
                             tags$h3("Datos:"),
                             textInput("txt1", "Primer Nombre:", ""),
                             textInput("txt2", "Primer Apellido:", ""),
                             
                           ), # sidebarPanel
                           mainPanel(
                             h1("App de nombres en R"),
                             
                             h4("Nombre y Apellido"),
                             verbatimTextOutput("txtout"),
                             
                           ) # mainPanel
                           
                  ), # Navbar 1, tabPanel
                  tabPanel("Segunda pestana", "Podemos colocar un readme o una explicacion del proyecto")
                  
                ) # navbarPage
) # fluidPage


# Define server function  
server <- function(input, output) {
  
  output$txtout <- renderText({
    paste( input$txt1, input$txt2, sep = " " )
  })
} # server


# Create Shiny object
shinyApp(ui = ui, server = server)
