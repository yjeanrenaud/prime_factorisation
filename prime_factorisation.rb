def prime_factorisation(n)
  factors = []
  
  while n % 2 == 0
    factors.push(2)
    n = n / 2
  end
  
  for i in 3..Math.sqrt(n).to_i
    while n % i == 0
      factors.push(i)
      n = n / i
    end
  end
  
  if n > 2
    factors.push(n)
  end
  
  return factors
end
