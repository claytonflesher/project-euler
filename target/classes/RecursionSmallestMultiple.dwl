%dw 2.4

import every from dw::core::Arrays

fun calculateSmallestMultiple(start: Number, end: Number, candidate: Number = 1): Number =
    if(not isMultiple(start, end, candidate))
        calculateSmallestMultiple(start, end, candidate + 1)
    else
        candidate

fun isMultiple(start: Number, end: Number, candidate: Number): Boolean =
    ((start to end) as Array) every ((entry) -> (candidate mod entry) == 0)