%dw 2.4
fun calculateSumOfEvens(upTo: Number): Number = 
    sum(calculateEvenFibonnaci(upTo))

fun calculateFibonnaci(upTo: Number): Array<Number> =
    do {
        var result = do {
            var sequence = (1 to upTo) as Array
            ---
            sequence reduce ((item, accumulator = [1, 2]) -> 
                if (accumulator[-1] <= upTo)
                    accumulator << (accumulator[-2] + accumulator[-1])
                else
                    accumulator
            )
        }
        ---
        result[0 to -2]
    }

fun calculateEvenFibonnaci(upTo: Number): Array<Number> =
    calculateFibonnaci(upTo) filter isEven($)
