# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
seahawk_scores <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
seahawk_failures <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(seahawk_scores, seahawk_failures)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- seahawk_scores - seahawk_failures

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- games$dif > 0

# Create a vector of the opponent names corresponding to the games played
opponent <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
rownames(games) <- opponent

# View your data frame to see how it has changed!
View(games)
