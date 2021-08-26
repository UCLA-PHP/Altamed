#' Title
#'
#' @param ... 
#' @import shiny
#' @return
#' @export
#'

cuvaxApp <- function(...) {
  shinyApp(ui, server, ...)
}
