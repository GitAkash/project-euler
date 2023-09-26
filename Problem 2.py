# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.
#
#
# n=0
#
# def fib(n):
#     if n <= 1:
#         return 1
#     else:
#         return fib(n-1) + fib(n-2)
#
# while fib(n) < 40000000:
#     n += 1
#     print(n)

a = 0
b = 1
c = 0
sum = 0

while c < 4000000:
    c = a + b
    a = b
    b = c

    if c % 2 == 0:
        sum += c

print(sum)