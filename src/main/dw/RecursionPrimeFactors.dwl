%dw 2.4

fun calculateLargestPrimeFactor(inputNumber: Number, candidate: Number, results: Number): Number =
    if(candidate != 0)
        if((inputNumber mod candidate) == 0)
            if (isPrime(candidate))
                calculateLargestPrimeFactor(inputNumber, 0, candidate)
            else
                calculateLargestPrimeFactor(inputNumber, candidate - 1, results)
        else 
            calculateLargestPrimeFactor(inputNumber, candidate - 1, results)
    else 
        results

fun calculateLastTwoFactors(inputNumber: Number, candidate: Number, results: Array<Number>): Array<Number> =
    if (sizeOf(results) != 2)
        if(candidate > 1)  
            if ((inputNumber mod candidate) == 0)
                calculateLastTwoFactors(inputNumber, candidate - 1, results << candidate)
            else
                calculateLastTwoFactors(inputNumber, candidate - 1, results)
        else
            results << candidate 
    else 
        results

fun isPrime(candidate: Number): Boolean =
    calculateLastTwoFactors(candidate, ceil(candidate / 2), [candidate]) == [candidate, 1]