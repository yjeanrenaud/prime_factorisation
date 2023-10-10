#!/bin/bash
prime_factorisation() {
    n=$1
    factors=()
    while ((n % 2 == 0)); do
        factors+=("2")
        ((n = n / 2))
    done
    for ((i = 3; i <= n / 2; i += 2)); do
        while ((n % i == 0)); do
            factors+=("$i")
            ((n = n / i))
        done
    done
    if ((n > 2)); then
        factors+=("$n")
    fi
    echo "${factors[@]}"
}
