using System;
using System.Collections.Generic;

class Program
{
    static List<int> PrimeFactorisation(int n)
    {
        List<int> factors = new List<int>();
        int divisor = 2;

        while (n > 1)
        {
            while (n % divisor == 0)
            {
                factors.Add(divisor);
                n /= divisor;
            }
            divisor++;
        }

        return factors;
    }
}
