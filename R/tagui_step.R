#' Add a step to tagUI script
#'
#'
#' @param step_action "tagUI action step"
#'
#' @return
#' @export
#'
tagui_step <- function(step_action) {
  # Check if script was initialized
  if (is.null(getOption("tagui_init_file"))) {

    print ("Please use tagui_init() to initiate the tagUI script")

    return()
  }

  # Get the current tagui file
  tagui_init_file <- getOption("tagui_init_file")

  # Write the new line to the tagUI file
  write(x = step_action, file = tagui_init_file, append = TRUE)

}

