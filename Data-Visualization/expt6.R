library(fosdata)
data(austen)
library(dplyr)
library(ggplot2)

emma_data <- austen %>%
  filter(novel == "Emma")

emma_filtered <- emma_data %>%
  filter(sentiment_score != 0)

positive_percentage <- emma_filtered %>%
  group_by(chapter) %>%
  summarise(positive_percentage = sum(sentiment_score > 0) / n() * 100)

ggplot(positive_percentage, aes(x = chapter, y = positive_percentage)) +
  geom_point() +
  geom_smooth(method = "loess", se=FALSE, color = "blue") +
  labs(title = "Percentage of positive words in Emma by chapter",
       x = "Chapter",
       y = "Percentage of positive words")+
  theme_minimal()

