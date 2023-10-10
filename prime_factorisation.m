function factors = PrimeFactorisation(n)
    factors = [];
    while mod(n, 2) == 0
        factors = [factors, 2];
        n = n / 2;
    end
    for i = 3:sqrt(n)
        while mod(n, i) == 0
            factors = [factors, i];
            n = n / i;
        end
    end    
    if n > 2
        factors = [factors, n];
    end
end
