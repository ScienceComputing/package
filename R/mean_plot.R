#' Mean Plot
#'
#'This function produces a scatter plot of \code{vary} versus \code{varx}
#' @param df a dataframe
#' @param varx a string name for variable x in the dataframe df
#' @param vary a string name for variable y in the datagrame df
#'
#' @return A scatter plot with \code{vary} versus \code{varx}
#' @export
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_points
#'
#' @examples
#' df_test <- data.frame(x = rnorm(10),
#'                       y = rnorm(10))
#' mean_plot(df_test, 'x', 'y')
#'
mean_plot <- function(df, varx, vary) {
  ggplot(df, aes(x = get(varx), y = get(vary))) +
    geom_point(
      shape = 23,
      fill = 'blue',
      color = 'darkred',
      size = 3
    )
}
