# Module UI
  
#' @title   mod_log_processor_ui and mod_log_processor_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_log_processor
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
mod_log_processor_ui <- function(id){
  ns <- NS(id)
  tagList(
  
  )
}
    
# Module Server
    
#' @rdname mod_log_processor
#' @export
#' @keywords internal
    
mod_log_processor_server <- function(input, output, session){
  ns <- session$ns
  
  library(jsonlite)
  
  log <- read.table("data-raw/log1.json", stringsAsFactors = F)
  fromJSON(log$V1)
  
  json <- fromJSON("data-raw/log1.json")
  log <- fromJSON(txt = "data-raw/log1.log")
}
    
## To be copied in the UI
# mod_log_processor_ui("log_processor_ui_1")
    
## To be copied in the server
# callModule(mod_log_processor_server, "log_processor_ui_1")
 
