
# The Objective function
objective_fun <- function(q) {
  return (100*q-q^2-4*q)
}

# Test of the function
objective_fun(48)

# For Loop to check for each possible value of "Q" (up to 100)
# which is the maximum value of our objective function. Results are
# stored in x and y in order to plot them (see below)

x <- c()
y <- c()

for (q in 1:100) {
  r1 <- q
  r2 <- print(objective_fun(q))
  
  x <- c(x, r1)
  y <- c(y, r2)
  
}

# Check among the results which is the one that returns 
# tha maximum value.
which.max(y)

# Graphical Inspection
plot(x,y)
abline(v=48, col="red")


# Check with "optimize" function in R
f <- function (q) (100*q-q^2)-(4*q)
xmax <- optimize(f, c(0, 1000), tol = 0.0001, maximum = TRUE)
xmax
