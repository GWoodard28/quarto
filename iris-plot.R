library(tidyverse)

iris_plot <- ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point() +
  labs(
    title = "Measurements for Different Species of Iris",
    subtitle = "Virginica has the longest sepals",
    x = "Sepal Width",
    y = "Sepal Length",
    caption = "Fisher (1936)"
  ) +
  scale_color_manual(
    values = c(setosa = "orange", versicolor = "green", virginica = "blue")
  ) +
  scale_x_continuous(breaks = 2:5) +
  scale_y_continuous(breaks = 5:9) +
  coord_cartesian(xlim = c(2, 5), ylim = c(5, 9))

print(iris_plot)
