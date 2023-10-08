%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from EvenFibonacciNumbers
---
"EvenFibonacciNumbers" describedBy [
    "generateEvens" describedBy [
        "It should calculate the sum of even fibonnaci numbers up to 100" in do {
            calculateSumOfEvens(100) must equalTo(44)
        },
        "It should calculate the sum of even fibonnaci numbers up to 3,999,999" in do {
            calculateSumOfEvens(3999999) must equalTo(4613732)
        }
    ],
    "calculateFibonnaci" describedBy  [
        "It should calculate the fibonnaci sequence up to 10" in do {
            calculateFibonnaci(10) must equalTo([1,2,3,5,8])
        },
        "It should calculate the fibonnaci sequence up to 25" in do {
            calculateFibonnaci(25) must equalTo([1,2,3,5,8,13,21])
        }
    ],
    "calculateEvenFibonnaci" describedBy  [
        "It should calculate the even fibonnaci sequence up to 10" in do {
            calculateEvenFibonnaci(10) must equalTo([2,8])
        },
        "It should calculate the even fibonnaci sequence up to 35" in do {
            calculateEvenFibonnaci(35) must equalTo([2,8,34])
        }
    ]
]
