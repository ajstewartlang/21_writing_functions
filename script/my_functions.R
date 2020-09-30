read_in_data <- function(x) {
  read_csv(x)
}

plot_my_data <- function(x) {
  x %>%
    ggplot(aes(x = Condition, y = RT)) +
    geom_point()
}