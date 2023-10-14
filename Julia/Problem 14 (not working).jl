"""
The following iterative sequence is defined for the set of positive integers:
    n → n/2 (n is even)
    n → 3n + 1 (n is odd)
Using the rule above and starting with 13, we generate the following sequence:
                              13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet
(Collatz Problem), it is thought that all starting numbers finish at 1.
Which starting number, under one million, produces the longest chain?
NOTE: Once the chain starts the terms are allowed to go above one million.
"""


function sequencesize(n::Int)
    x = []
    while n != 1
        if n % 2 == 0       # If even, divide by two
            n = div(n,2)
        else                # If odd, multiply itself by 3 and add 1
        n = 3*n + 1
        end
        push!(x, n)         # Why am I pushing twice here
    end
    size(push!(x, n), 1)    # Huh? (Seems to be working tho.)
end

function solve(n)
    max = 0
    max_n = 0
    for i in range(1, n)    # For every number in the range from one to N
        if i % 2 != 0       # Check if number is not divisible by 2 (increase speed)
            y = sequencesize(i) # Check the size of the path to 1
            if y > max         # If the size is longer than maximum push to maximum.
                max = y
                max_n = i
            end
        end
    end
    return max, max_n
end

    
