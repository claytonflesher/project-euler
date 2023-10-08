%dw 2.4
fun calculatePrimeFactors(inputNumber: Number): Array<Number> =
    do {
        var result = calculateFactors(inputNumber) filter ((number) -> 
            isPrime(number)
        )
        ---
        result
    }

fun calculateFactors(inputNumber: Number): Array<Number> =
    ((1 to inputNumber) as Array) filter ((inputNumber mod $) == 0)

fun isPrime(number: 0) = false

fun isPrime(number: Number): Boolean =
    sizeOf(calculateFactors(number)) == 2