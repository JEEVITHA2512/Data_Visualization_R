install.packages("ggplot2")  # Only install once
library(ggplot2)
data(mtcars)

# Categorical color scale
ggplot(mtcars, aes(x = mpg, y = hp, color = factor(cyl))) +
  geom_point() +
  labs(title = "Highway Mileage vs City Mileage",
       x = "High Mileage (mpg)",
       y = "City Mileage (hp)",
       color = "Number of Cylinders") +
  theme_minimal()

# Sequential color scale
ggplot(mtcars, aes(x = mpg, y = hp, color = cyl)) +
  geom_point() +
  labs(title = "Highway Mileage vs City Mileage",
       x = "High Mileage (mpg)",
       y = "City Mileage (hp)",
       color = "Number of Cylinders") +
  scale_color_gradient(low = "blue", high = "red") +
  theme_minimal()

