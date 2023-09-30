# prime is only divisible by itself
# als n alleen deelbaar is door zichzelf en door 1. dan is ie priem(a).


def ispriem(n):

    if n == 1:
        return False

    for i in range(2, n):
        if n % i == 0:
            return False

    return True


print(ispriem(2))