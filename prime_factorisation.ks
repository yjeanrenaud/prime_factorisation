fun primeFactorisation(n: Int): List<Int> {
    val factors = mutableListOf<Int>()
    var num = n
    var divisor = 2

    while (num > 1) {
        while (num % divisor == 0) {
            factors.add(divisor)
            num /= divisor
        }
        divisor++
    }
    return factors
}
