% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotly_theme.R
\name{nice_plotly_theme}
\alias{nice_plotly_theme}
\title{Apply NICE Plotly theme}
\usage{
nice_plotly_theme(
  p,
  chart_type = "vertical_bar",
  x_title = "[x axis title]",
  y_title = "[y axis title]",
  font_size = 12,
  pad_axes = TRUE
)
}
\arguments{
\item{p}{Plotly chart object.}

\item{chart_type}{Type of chart, determines which grid lines are shown:
\itemize{
\item \code{"vertical_bar"} (default): For bar charts and histograms. Only shows
horizontal grid lines.
\item \code{"horizontal_bar"}: For horizontal bar charts. Only shows vertical grid
lines.
\item \code{"scatter"}: For scatter plots. Shows both horizontal and vertical grid
lines.
\item \code{"line"}: For line charts. Only shows horizontal grid lines.
}}

\item{x_title, y_title}{String to use as x or y axis title. Defaults to
\code{"[x axis title]"} and \code{"[y axis title]"} respectively.}

\item{font_size}{Minimum font size. Default is \code{12}.}

\item{pad_axes}{Add space between the axis lines and the axis title or tick
marks? If \code{TRUE} (default), adds some space between the tick labels and
the axis lines. If using tick marks, set to \code{FALSE} to avoid a gap between
the axis lines and the tick marks.}
}
\value{
A Plotly chart object.
}
\description{
\code{nice_plotly_theme()} applies a NICE theme to a Plotly chart object. It makes
some basic changes, including:
\itemize{
\item Changing the font to Inter
\item Setting the minimum font size
\item Adding or removing grid lines depending on the chart type
\item Reminds users to edit the x and y axis titles
\item Removes icons from the default Plotly tool bar
}
}
\examples{
# Load data
iris_bar_df <- iris \%>\%
   group_by(Species) \%>\%
   summarise(Sepal_Width = mean(Sepal.Width)) \%>\%
   ungroup()

# Create formatted chart
plot_ly(iris_bar_df,
   x = ~Species,
   y = ~Sepal_Width,
   type = "bar",
   marker = list(color = nice_colours_full[["bold_teal_100"]],
                 line = list(color = nice_colours_full[['black_100']], width = 1.5))) \%>\%
   # Apply NICE theme
   nice_plotly_theme(chart_type = "vertical_bar",
                     x_title = "Species",
                     y_title = "Sepal Width")
}
