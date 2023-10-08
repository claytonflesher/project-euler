%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from RecursionSmallestMultiple
---
"RecursionSmallestMultiple" describedBy [
    "isMultiple" describedBy [
        "It returns true if ever number from start to end is a multiple of the candidate" in do {
            isMultiple(1, 4, 12) must equalTo(true)
        },
        "It returns false if every number from start to end is not a multiple of the candidate" in do {
            isMultiple(1, 4, 13) must equalTo(false)
        },
        "It returns true for 1 to 10 when the candidate is 2520" in do {
            isMultiple(1, 10, 2520) must equalTo(true)
        }
    ],
    "calculateSmallestMultiple" describedBy [
        "It should find the smallest multiple of 1 to 4 to be 12" in do {
            calculateSmallestMultiple(1, 4) must equalTo(12)
        },
        "It should find the smallest multiple of 1 to 3 to be 6" in do {
            calculateSmallestMultiple(1, 3) must  equalTo(6)
        },
        "It should calculate the smallest multiple of 1 to 10 to be 2520" in do {
            calculateSmallestMultiple(1, 10) must equalTo(2520)
        },
        "It should calculate the smallest multiple of 1 to 20 to be 232792560" in do {
            calculateSmallestMultiple(1, 20) must equalTo(232792560)
        }
    ],
]
