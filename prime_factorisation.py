def prime_factorization(n):
    prime_factors = []
    divisor = 2
    
    if not int(n) == n : ##to catch polymorphs, too, which type() would not.
      raise ValueError('n is not an integer')

    while n > 1:
        while n % divisor == 0:
            prime_factors.append(divisor)
            n = n // divisor # or n //= divisor
        divisor = divisor +1 # or divisor += 1

    return prime_factors
