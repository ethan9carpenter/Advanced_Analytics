#Step 1: install.packages and load libraries:

#Step 2: look at data
itemFrequencyPlot(XX, topN=, type = "absolute")

#Step 3: Run MB Analysis

#set minimum support to 0.001
#set minimum confidence to 0.8

rules <- apriori(Groceries, parameter = list())

options(digits = )
inspect(rules[XX])

#STEP 4: Sort rules

rules <-sort(XX, decreasing = TRUE, by="XX")
inspect(rules[XX])

#STEP 5: Plot rules
library(arulesViz)
plot(XX,method="graph",interactive = TRUE,shading = NA)


