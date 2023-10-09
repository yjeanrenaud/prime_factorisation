#include <vector.h>
using namespace std;

class PrimeFactorisation {
private:
    vector<int> vFactors;
public:
    void factorise(int iNumber) {
        int iDivisor = 2;
        while (iNumber > 1) {
            while (iNumber % iDivisor == 0) {
                factors.push_back(iDivisor);
                iNumber /= iDivisor;
            }
            iDivisor++;
        }
    }
    vector<int> getFactors() {
        return vFactors;
    }
};
