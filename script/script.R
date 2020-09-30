library(tidyverse)

add_five <- function(x) x + 5

body(add_five)

formals(add_five)

environment(add_five)

add_five(1)

factorial_of_a_number <- function(x) {
  if (x == 1) {
    return(x)
  } else {
    return(x * factorial_of_a_number(x - 1))
  }
}

my_plot_of_humans <- function(my_tibble, my_x, my_y, my_x_label, my_y_label) {
    ggplot(data = filter(my_tibble, species == "Human" & !is.na(eval(my_y))),
           aes(x = fct_reorder(eval(my_x), eval(my_y)), y = eval(my_y))) +
    geom_point() +
    coord_flip() +
    labs(x = my_x_label, y = my_y_label) +
    theme_minimal() +
    theme(text = element_text(size = 5))
}

my_plot_of_humans(my_tibble = starwars, 
                  my_x = quote(name), 
                  my_y = quote(mass),
                  my_x_label = "Name",
                  my_y_label = "Mass (kg)")

my_plot_of_humans(my_tibble = starwars, 
                  my_x = quote(name), 
                  my_y = quote(height),
                  my_x_label = "Name",
                  my_y_label = "Height (cm)")

read_in_data <- function(x) {
  read_csv(x)
}

plot_my_data <- function(x) {
  x %>%
    ggplot(aes(x = Condition, y = RT)) +
    geom_point()
}

read_in_data("https://raw.githubusercontent.com/ajstewartlang/11_glm_anova_pt1/master/data/ANOVA_data1.csv") %>%
  plot_my_data()



