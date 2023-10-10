@echo off
setlocal EnableDelayedExpansion
:PrimeFactorisation
set "n=%~1"
set "factors="

:DivideBy2
    set /A "remainder=n %% 2"
    if %remainder%==0 (
        set "factors=!factors! 2"
        set /A "n=n / 2"
        goto :DivideBy2
    )

set "divisor=3"
:DivideByDivisor
    set /A "divisorSquare=divisor * divisor"
    if %n% lss %divisorSquare% (
        set "factors=!factors! %n%"
        goto :PrintFactors
    )
    set /A "remainder=n %% divisor"
    if %remainder%==0 (
        set "factors=!factors! %divisor%"
        set /A "n=n / divisor"
        goto :DivideByDivisor
    )
    set /A "divisor=divisor + 2"
    goto :DivideByDivisor

:PrintFactors
echo The prime factorization of %~1 is:%factors%
exit /b
