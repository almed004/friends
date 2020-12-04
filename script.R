install.packages('dplyr')
library("dplyr")
require("dplyr")

install.packages("car")
library("car")

source <- read.csv("friends.csv")
View(source)
source %>%
  filter(Eye.colour == "Brown") %>%
  arrange(Age, Height)

str(source)

anova2 <- aov(Height ~ Sex+Eye.colour+Sex:Eye.colour, data = source)
summary(anova2)

