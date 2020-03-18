#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(
      
      titlePanel(
        title = "Log Visualizer",
        windowTitle = "logVisualizer"
      ),
      
      column(
        width = 4,
        selectInput("log-name",
                    label = "Logfile",
                    choices = c("Log1", "Log2", "Log3")),
        selectInput("input2",
                    label = "Input 2",
                    choices = c(1,2,3))
      ),
      
      column(
        width = 8,
        h2("Display log info")
      )
      
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'logVisualizer')
  )
  
  tags$head(
    golem::activate_js(),
    golem::favicon(),
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    tags$link(rel="stylesheet", type="text/css", href="www/bootstrap.css")
  )
}
