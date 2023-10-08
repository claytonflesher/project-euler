%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from PrimeFactors
---
"PrimeFactors" describedBy [
    "calculatePrimeFactors" describedBy [
        "It should calculate the prime factors of 35 as 5 and 7"  in do {
            calculatePrimeFactors(35) must equalTo([5, 7])
        },
        "It should calculate the prime factors of 13195 as 5, 7, 13 and 29" in do {
            calculatePrimeFactors(13195) must equalTo([5,7,13,29])
        },
        // "It should calculate the prime factors of 600851475143" in do {
        //     calculatePrimeFactors(600851475143) must equalTo([1])
        // }
    ],
    "calculateFactors" describedBy  [
        "It should calculate the factors of 9 as 1, 3, 9" in do {
            calculateFactors(9) must  equalTo([1, 3, 9])
        },
        "It should calculate the factors of 5 as 1 and 5" in do {
            calculateFactors(5) must  equalTo([1,5])
        },
        "It should calculate the factors of 12 as 1, 2, 3, 4, 6 and 12" in do {
            calculateFactors(12) must equalTo([1,2,3,4,6,12])
        },
        "It should calculate the factors of 1 as 1" in do {
            calculateFactors(1) must equalTo([1])
        },
        // "It should calculate the factors of 600851475143" in do {
        //     calculateFactors(600851475143) must equalTo([1,600851475143])
        // }
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
