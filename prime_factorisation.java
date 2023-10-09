import java.util.ArrayList;
import java.util.List;

public class PrimeFactorisation {

    public static List<Integer> primeFactorisation(int n) {
        List<Integer> factors = new ArrayList<>();
        int divisor = 2;

        while (n > 1) {
            while (n % divisor == 0) {
                factors.add(divisor);
                n /= divisor;
            }
            divisor++;
        }

        return factors;
    }
}
