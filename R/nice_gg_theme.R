#' nice_gg_theme
#'
#' @return
#' @export
#'
#' @examples
#' line_chart <- ggplot(line_df, aes(x = year, y = people)) +
#' geom_line(colour = "#228096") +
#' nice_gg_style()

nice_gg_theme <- function(legend = "none"){

    font <- "Helvetica"

    nice_theme <- ggplot2::theme(

      # Format the text ---------------------------------------------------------

      # This sets the font, size, and colour of text for the chart's title
      plot.title = ggplot2::element_text(family = font,
                                         size = 28,
                                         face = "bold",
                                         color = "#000000"),

      # This sets the font, size and colour of text for the chart's subtitle, as
      # well as setting a margin between the title and the subtitle
      plot.subtitle = ggplot2::element_text(family = font,
                                            size = 22,
                                            margin = ggplot2::margin(9,0,9,0)),

      # This leaves the caption text element empty, because it is set elsewhere in
      #the finalise plot function
      plot.caption = ggplot2::element_blank(),


      # Format the axes ---------------------------------------------------------

      # This sets the text font, size and colour for the axis test, as well as
      # setting the margins and removes lines and ticks. In some cases, axis lines
      # and axis ticks are things we would want to have in the chart

      axis.title = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(family = font,
                                        size = 14,
                                        color = "#000000"),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
      axis.ticks = ggplot2::element_blank(),
      axis.line = ggplot2::element_blank(),


      # Format the grid lines ---------------------------------------------------

      # This removes all minor grid lines and adds major y grid lines. In many cases
      # you will want to change this to remove y grid lines and add x grid lines
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(color = "#BFBFBF"),
      panel.grid.major.x = ggplot2::element_line(color = "#BFBFBF"), #ggplot2::element_blank(),


      # Format the background ---------------------------------------------------

      #This sets the panel background as blank, removing the standard grey
      panel.background = ggplot2::element_blank(),


      # Format the legend -----------------------------------------------------

      # This will position the legend according to the users input, and
      # remove it's background/title/key

      legend.position = legend,
      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(family = font,
                                          size = 12,
                                          color = "#000000"),


      # Set up faceting options ------------------------------------------------

      #This sets the panel background for facet-wrapped plots to Bold teal, and
      # makes the text white

      strip.background = ggplot2::element_rect(fill = "#228096",
                                               color = "#000000",
                                               size = 1,
                                               linetype = "solid"),

      strip.text = ggplot2::element_text(family = font,
                                         size  = 14,
                                         hjust = 0.5,
                                         color = "#FFFFFF"),

      panel.border = ggplot2::element_rect(color = "#000000",
                                           size = 0.5,
                                           fill = NA)

    )

    return(nice_theme)
}