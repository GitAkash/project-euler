"""
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
"""



using Primes

function solve(N)
    sum = 0
    for i in collect(1:N)
        if isprime(i) == true
            sum += i
        end
    end
    sum
end


