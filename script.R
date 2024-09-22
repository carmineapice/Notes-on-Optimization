
# Funzione. Rappresenta la derivata prima di Revenue - Cost, quindi segue
# regola MR = MC
function_1 <- function(q) {
  return (100*q-q^2-4*q)
}

# Test: La funzione calcolata a mano dava Q* = 48
function_1(48)

# Loop che serve per valutare tra tutti i possibili valori della Q di input
# quale massimizza il valore della funzione stessa.
x <- c()
y <- c()

for (q in 1:100) {
  r1 <- q
  r2 <- print(function_1(q))
  
  x <- c(x, r1)
  y <- c(y, r2)
  
}
which.max(y)

plot(x,y)
abline(v=48, col="red")



f <- function (q) (100*q-q^2)-(4*q)
xmax <- optimize(f, c(0, 1000), tol = 0.0001, maximum = TRUE)
xmax
