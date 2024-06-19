# Load libraries
library(ggplot2)

# Read the dataset
titanic_data <- read.csv("titanic.csv")

# Bar charts

# Gender bar chart
gender_chart <- ggplot(titanic_data, aes(x = Sex)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Distribution of Passengers by Gender", x = "Gender", y = "Count")

# Save the plot
ggsave("gender_chart.png", plot = gender_chart)

# Ticket class bar chart
class_chart <- ggplot(titanic_data, aes(x = factor(Pclass))) +
  geom_bar(fill = "lightgreen") +
  labs(title = "Distribution of Passengers by Ticket Class", x = "Ticket Class", y = "Count")

# Save the plot
ggsave("class_chart.png", plot = class_chart)

# Survival bar chart
survival_chart <- ggplot(titanic_data, aes(x = factor(Survived))) +
  geom_bar(fill = "coral") +
  labs(title = "Distribution of Passengers by Survival", x = "Survived", y = "Count") +
  scale_x_discrete(labels = c("0" = "Did Not Survive", "1" = "Survived"))

# Save the plot
ggsave("survival_chart.png", plot = survival_chart)