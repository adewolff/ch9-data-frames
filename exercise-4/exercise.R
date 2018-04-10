# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
gates_money <- read.csv("./data/gates_money.csv", stringsAsFactors = F)

# Use the View function to look at the loaded data
View(gates_money)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- gates_money$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
mean_grant <- mean(gates_money$total_amount)

# What was the dollar amount of the largest grant?
max_grant <- max(gates_money$total_amount)

# What was the dollar amount of the smallest grant?
min_grant <- min(gates_money$total_amount)

# Which organization received the largest grant?
min_organization <- gates_money$organization[gates_money$total_amount == 
                                               min(gates_money$total_amount)]

# Which organization received the smallest grant?
max_organization <- gates_money$organization[gates_money$total_amount == 
                                               max(gates_money$total_amount)]


# How many grants were awarded in 2010?
# Looked at answer for this
length(gates_money$total_amount[gates_money$start_year == 2010])
