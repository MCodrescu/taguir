#' Run the tagUI script
#'
#' @importFrom glue glue
#'
#' @param arguments "Arguments to the run tagUI command"
#'
#' @return
#' @export
#'
tagui_run <- function(arguments = ""){
  # Check if script was initialized
  if (is.null(getOption("tagui_init_file"))) {

    print ("Please use tagui_init() to initiate the tagUI script")

    return()
  }

  # Run the tagUI script
  tagui_run_command <- glue("tagui {getOption(\"tagui_init_file\")} {arguments}")
  system(tagui_run_command)
}
