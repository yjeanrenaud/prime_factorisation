<?php
function primeFactorisation($n) {
    $factors = array();

    while ($n % 2 == 0) {
        $factors[] = 2;
        $n = $n / 2;
    }

    for ($i = 3; $i <= sqrt($n); $i = $i + 2) {
        while ($n % $i == 0) {
            $factors[] = $i;
            $n = $n / $i;
        }
    }

    if ($n > 2) {
        $factors[] = $n;
    }

    return $factors;
}
?>
