#' stop the livestream
#'
#' @param id takes an id string from livestream_start return
#' @description authorize your online ngrok subscription to work on your computer
#' @importFrom livecode stop_all
#' @importFrom rstudioapi terminalKill
#' @import remotes
#' @export

livestream_stop <- function(id = NULL){
  terminalKill(id = id)
  stop_all()
}