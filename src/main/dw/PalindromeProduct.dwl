%dw 2.4
import reverse from dw::core::Strings
fun findLargestPalindromeProduct(digits: 2): Number =
    calculateLargestPalindrome(10, 99)

fun findLargestPalindromeProduct(digits: 3): Number =
    calculateLargestPalindrome(100, 999)

fun findLargestPalindromeProduct(digits: 4): Number =
    calculateLargestPalindrome(1000,9999)

fun isPalindrome(number: Number): Boolean =
    do {
        var reversed = reverse(number as String)
        ---
        (number as String) == reversed
    }

fun findPalendromes(start: Number, end: Number) =
    (start to end) as Array reduce ((n1, accumulator = []) ->
            accumulator ++ 
                ((start to end) as Array reduce ((n2, acc = []) -> 
                if (isPalindrome(n1 * n2))
                    acc << (n1 * n2)
                else
                    acc
                )
            )
        )

fun calculateLargestPalindrome(start: Number, end: Number) = 
    do { 
        var palindromes = findPalendromes(start, end)
        ---
        palindromes orderBy -$
        then (pals) -> pals[0]
    }
