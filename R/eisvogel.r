
#' @section \code{eisvogel}: Format for creating a PDF document with the
#'   Eisvogel template. Documentation and source can be found under:
#'   \url{https://github.com/Wandmalfarbe/pandoc-latex-template}.
#' @examples \dontrun{
#' rmarkdown::draft("MyArticle.Rmd", template = "eisvogel", package = "pandoc-latex-template")
#' rmarkdown::draft("MyArticle.Rmd", template = "eisvogel", package = "pandoc-latex-template")}
#' @export
#' @rdname eisvogel
eisvogel <- function(...) {
  pdf_document_format("eisvogel", ...)
}