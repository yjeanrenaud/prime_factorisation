void prime_factorisation(int iNumber) {
    int iDivisor = 2;

    while (iNumber > 1) {
        while (iNumber % iDivisor == 0) {
            printf("%d ", iDivisor);
            iNumber /= iDivisor;
        }
        iDivisor++;
    }
}
