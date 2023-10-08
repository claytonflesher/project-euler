%dw 2.4
import firstWith, every, divideBy from dw::core::Arrays

fun findSmallestMultiple(start: Number, end: Number): Number | Null =
    do {
        var evensUpTo10000000 = (((1 to 1000000000) as Array) filter (isEven($)))
        var candidates = (start to end) as Array
        ---
        evensUpTo10000000 firstWith ((number) -> candidates every ((number mod $) == 0))
    }