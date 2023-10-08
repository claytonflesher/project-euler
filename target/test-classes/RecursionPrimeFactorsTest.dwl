%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from RecursionPrimeFactors
---
"RecursionPrimeFactors" describedBy [
    "calculatePrimeFactors" describedBy [
        "It should calculate the largest prime factor of 35 as 7"  in do {
            calculateLargestPrimeFactor(35, ceil(35 / 2), 0) must equalTo(7)
        },
        "It should calculate the largest prime factor of 13195 as 29" in do {
            calculateLargestPrimeFactor(13195, ceil(13195 / 2), 0) must equalTo(29)
        },
        // "It should calculate the largest prime factor of 600851475143" in do {
        //     calculateLargestPrimeFactor(600851475143, ceil(600851475143 / 2), 0) must equalTo(0)
        // }
    ],
    "calculateFactors" describedBy  [
        "It should calculate the factors of 9 as 3, 9" in do {
            calculateLastTwoFactors(9, 9, []) must  equalTo([9, 3])
        },
        "It should calculate the factors of 5 as 1 and 5" in do {
            calculateLastTwoFactors(5, 5, []) must  equalTo([5, 1])
        },
        "It should calculate the factors of 12 as 6 and 12" in do {
            calculateLastTwoFactors(12, 12, []) must equalTo([12, 6])
        },
        "It should calculate the factors of 1 as 1" in do {
            calculateLastTwoFactors(1, 1, []) must equalTo([1])
        }
    ],
    "isPrime" describedBy  [
        "It should return true for a prime number of 5" in do {
            isPrime(5) must  equalTo(true)
        },
        "It should return false for a non-prime number of 4" in do {
            isPrime(4) must equalTo(false)
        }
    ]
]
