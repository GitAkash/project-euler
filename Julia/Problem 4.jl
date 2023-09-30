"""
   A palindromic number reads the same both ways. The largest palindrome made
   from the product of two 2-digit numbers is 9009 = 91 * 99.

   Find the largest palindrome made from the product of two 3-digit numbers.
"""

function checkPalindrome(N)
    s = string(N)                              # Grab the number and convert it to a string, otherwise it will look for an array.
    s == reverse(s)                            # Check if the number reversed is the same as the number (def. palindrome)
end

function Solve(x,y)
    max = 0 
    for i in collect(x:y) 
        for j in collect(x:y)
            n = i * j                           # Multiply all numbers from x to y with each other
            if checkPalindrome(n) && n > max    # Check if the number is a palindrome, and if it is bigger than previous number.
                max = n
            end
        end
    end
    max
end