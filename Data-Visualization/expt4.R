library(fosdata)  # Load the fosdata package
data(pres_election)  # Load the pres_election dataset

library(dplyr)
library(ggplot2)

# Calculate total votes for each party by year
party_votes <- pres_election %>%
  group_by(year, party) %>%
  summarise(total_votes = sum(total_votes))

# Create the plot
ggplot(party_votes, aes(x = party, y = total_votes, fill = party)) +
  geom_bar(stat = "identity") +
  facet_wrap(~ year, scales = "free_x", nrow = 1) +
  labs(title = "Total Votes by Political Party (2010-2016)",
       x = "Political Party",
       y = "Total Votes",
       fill = "Political Party") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set3")
