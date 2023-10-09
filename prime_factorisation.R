prime_factorisation <- function(n) {
  factors <- c()
  
  while (n %% 2 == 0) {
    factors <- c(factors, 2)
    n <- n / 2
  }
  
  for (i in 3:sqrt(n)) {
    while (n %% i == 0) {
      factors <- c(factors, i)
      n <- n / i
    }
  }
  
  if (n > 2) {
    factors <- c(factors, n)
  }
  
  return(factors)
}
