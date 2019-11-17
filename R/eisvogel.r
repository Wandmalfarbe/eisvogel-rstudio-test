find_resource <- function(template, file = 'template.tex') {
  res <- system.file(
    "rmarkdown", "templates", template, "resources", file, package = "eisvogel"
  )
  if (res == "") stop(
    "Couldn't find template file ", template, "/resources/", file, call. = FALSE
  )
  res
}


# Helper function to create a custom format derived from pdf_document that
# includes a custom LaTeX template
pdf_document_format <- function(
  format, template = find_resource(format, 'template.tex'), ...
) {
  fmt <- rmarkdown::pdf_document(..., template = template)
  fmt$inherits <- "pdf_document"
  fmt
}

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