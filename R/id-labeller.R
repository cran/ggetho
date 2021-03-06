#' @noRd
id_wrap <- function(x){
  stringr::str_replace_all(x, "\\|", "\n")
}

NULL

#' A facet labeller for `id`
#'
#' This function returns a [ggplot2::labeller] that displays the `id` on several lines to improve readability.
#' @inheritParams  ggplot2::label_value
#' @seealso [ggplot2::labeller], to make your own labellers
#' @examples
#' library(behavr)
#' metadata <- data.frame(
#'      id = sprintf("2017-09-01 20:00:12|toy_experiment_a_very_long_name|%02d", 1:20),
#'      condition = c("A", "B"))
#' dt <- toy_activity_data(metadata, duration = hours(2))
#' pl <- ggetho(dt, aes(y = asleep)) + stat_pop_etho()
#' ## Without labelling
#' pl + facet_wrap( ~ id)
#'
#' ## With labeller
#' pl + facet_wrap( ~ id, labeller = id_labeller)
#'
#' @export
id_labeller <- ggplot2::labeller(.default = id_wrap)





