#' Initialize a TagUI script
#'
#' @return
#' @export
#'
tagui_init <- function() {

  # Create a temp .tag file
  file_name <- tempfile(pattern = "tagUIscript", fileext = ".tag")

  # Return the filename
  options("tagui_init_file" = file_name)

}

