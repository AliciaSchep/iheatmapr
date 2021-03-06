% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotations.R
\name{add_row_annotation}
\alias{add_row_annotation}
\alias{add_row_annotation,Iheatmap-method}
\title{add_row_annotation}
\usage{
\S4method{add_row_annotation}{Iheatmap}(
  p,
  annotation,
  colors = NULL,
  side = c("right", "left"),
  size = 0.05,
  buffer = 0.015,
  inner_buffer = buffer/2,
  layout = list(),
  show_colorbar = TRUE
)
}
\arguments{
\item{p}{\code{link{Iheatmap-class}} object}

\item{annotation}{data.frame or object that can be converted to data frame}

\item{colors}{list of color palettes, with one color per annotation column 
name}

\item{side}{side of plot on which to add row annotation}

\item{size}{relative size of each row annotation}

\item{buffer}{relative size of buffer between previous subplot and row 
annotation}

\item{inner_buffer}{relative size of buffer between each annotation}

\item{layout}{layout properties for new x axis}

\item{show_colorbar}{logical indicator to show or hide colorbar}
}
\value{
\code{\link{Iheatmap-class}} object, which can be printed to generate 
an interactive graphic
}
\description{
Adds annotation heatmaps for one or more qualitative or quantitative 
annotations for each row of a main heatmap.
}
\examples{

mat <- matrix(rnorm(24), nrow = 6)
annotation <- data.frame(gender = c(rep("M", 3),rep("F",3)),
                        age = c(20,34,27,19,23,30))
hm <- iheatmap(mat) \%>\% add_row_annotation(annotation)

# Print heatmap if interactive session 
if (interactive()) hm 
}
\seealso{
\code{\link{iheatmap}}, \code{\link{add_row_annotation}}, 
\code{\link{add_col_signal}}, \code{\link{add_col_groups}}
}
\author{
Alicia Schep
}
