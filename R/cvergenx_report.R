#' Business Report (PDF)
#'
#' This function can be used to render the Cvergenx business report. The design
#' and layout is loosely oriented at MS Word defaults.
#' 
#' @inheritParams rmarkdown::pdf_document
#' @param template character; Pandoc template to use for rendering. Pass
#' \code{"INWTlab"} to use the default example template
#' @param resetStyleFiles logical; should the style files (logo, cover, defs.tex) be overwritten with the default files?
#' @param ... further arguments passed to \code{\link[rmarkdown]{pdf_document}}
#' 
#' @details The function serves as wrapper to \code{\link[rmarkdown]{pdf_document}}
#' only steering the selection of the template.
#'
#' @export
cvergenx_report <- function(template = "Cvergenx", resetStyleFiles = FALSE,...) {

  defs<-system.file(
    "rmarkdown/templates/cvergenx_report/skeleton/defs.tex",
    package = "cvxreports",
    mustWork = TRUE
  )
  

  # call the base pdf_document format with the appropriate options
  pdf_document(toc=TRUE, toc_depth=2,
    includes=rmarkdown::includes(in_header=defs),
               pandoc_args = c("--variable", "graphics=yes", 
                               "--variable", "geometry:left=2.5cm",
                               "--variable", "geometry:right=2.5cm",
                               "--variable", "geometry:top=1.2cm",
                               "--variable", "geometry:bottom=1.2cm",
                               "--variable", "geometry:includeheadfoot"
                               ),
               latex_engine="xelatex",
               ...)

}
