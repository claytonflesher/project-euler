%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from SmallestMultiple
---
"SmallestMultiple" describedBy [
    "findSmallestMultiple" describedBy [
        "It returns 12 as the smallest multiple for a start of 1 and an end of 4" in do {
            findSmallestMultiple(1, 4) must equalTo(12)
        },
        "It returns 6 as the smallest multiple for a start of 1 and an end of 3" in do {
            findSmallestMultiple(1, 3) must equalTo(6)
        },
        "It returns 2520 as the smallest multiple for a start of 1 and an end of 10" in do {
            findSmallestMultiple(1, 10) must equalTo(2520)
        },
        "It returns 232792560 as the smallest multiple for a start of 1 and an end of 20" in do {
            findSmallestMultiple(1, 20) must equalTo(232792560)
        }
    ],
]
