function sequencesize(n::Int)
    x = []
    while n != 1
        if n % 2 == 0       # If even, divide by two
            n = div(n,2)
        else                # If odd, multiply itself by 3 and add 1
        n = 3*n + 1
        end
        push!(x, n)         # Why am I pushing twice here?
    end
    size(push!(x, n), 1)    # Huh? (Seems to be working tho.)
end

function test(n)
    max = 0
    for i in range(1, n)    # For every number in the range from one to N
        if i % 2 != 0       # Check if number is not divisible by 2 (increase speed)
            y = sequencesize(i) # Check the size of the path to 1
            if y > max         # If the size is longer than maximum push to maximum.
                max = y
            end
        end
    end
    max
end

    
    