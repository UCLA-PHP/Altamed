#' Title
#'
#' @param ... 
#' @import shiny
#' @return
#' @export
#'

# library("Altamed")

cuvaxApp <- function(...) {
  shinyApp(ui, server, ...)
}
