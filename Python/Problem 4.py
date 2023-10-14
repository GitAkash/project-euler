def solve():
    maxi = 0
    for i in range(100, 1000, 1):
        for j in range(999, 100, -1):
            ans = i * j
            reversed_ans = str(ans)[::-1]
            if str(ans) == reversed_ans and ans > maxi:
                maxi = ans
    return maxi

print(solve())