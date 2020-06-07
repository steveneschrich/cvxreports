#' Print the R session information.
#'
#' @return Kable output representing the session information.
#' @export
#'
#' @examples
#' print_session_info()
#' 
print_session_info<-function() {
  suppressPackageStartupMessages({
    require(knitr)
    require(kableExtra)
    require(devtools)
  })
  res<-data.frame(unlist(devtools::session_info()[[1]]))
  colnames(res)<-NULL
                  
  preamble<-"\\newpage \\section{Session Information}"
  tab<-kableExtra::kable_styling(knitr::kable(res, 
                                         caption="Session Information", 
                                         booktabs=TRUE,
                                         format="latex"),
                           latex_options = "hold_position"
  )
  cat(preamble, tab)

}