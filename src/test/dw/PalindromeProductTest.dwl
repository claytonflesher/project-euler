%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from PalindromeProduct
---
"PalindromeProduct" describedBy [
    "findLargestPalindromeProduct" describedBy [
        "It should find the largest palindrome product for the number of input digits of 2" in do {
            findLargestPalindromeProduct(2) must equalTo(9009)
        },
        "It should find the largest palindrome product for the number of input digits of 3" in do {
            findLargestPalindromeProduct(3) must equalTo(906609)
        },
        // "It should find the largest palindrome product for the number of input digits of 4" in do {
        //     findLargestPalindromeProduct(4) must equalTo(99000099)
        // }
    ],
    "isPalindrome" describedBy  [
        "It should return true if the number is a palindrome such as 9009" in do {
            isPalindrome(9009) must equalTo(true)
        },
        "It should return false if the number is not a palindrome such as 1234" in do {
            isPalindrome(1234) must equalTo(false)
        }
    ]
]
