install.packages("remotes")
remotes::install_github("speegled/fosdata")
library(fosdata)

data(austen)
austen$word_length <- nchar(austen$word)

library(ggplot2)
ggplot(austen, aes(x = word_length)) +
  geom_bar() +
  facet_wrap(~ novel, scales = "free") +
  labs(title = "Word Lengths Faceted by Novel",
       x = "Word Length",
       y = "Frequency")

