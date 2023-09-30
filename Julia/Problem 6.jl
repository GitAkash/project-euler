"""
The sum of the squares of the first ten natural numbers is,
                                                   1² + 2² + ... + 10² = 385
The square of the sum of the first ten natural numbers is,
                                                (1 + 2 + ... + 10)² = 55² = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
3025 - 385 = 2640.
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
"""

function solve(N::Int)
    z = collect(1:N)
    a = sum(z)^2       #    First add everything up, then square it.
    b = sum(z.^2)      #    Square each item, then add everything up.
    diff = abs(a - b)
end



# Initial solution:
#
# function solve(N::Int)
#     z = collect(1:N)
#     q = sum(z)^2#
#     sum_natural = 0

#     for i in z
#         natural_squared = i^2
#         sum_natural += natural_squared
#     end
   
#     difference = abs(sum_natural-q)
# end
