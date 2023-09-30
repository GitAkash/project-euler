function sequencesize(n::Int)
    x = []
    while n != 1
        if n % 2 == 0
            n = div(n,2)
        else
        n = 3*n + 1
        end
        push!(x, n)
    end
    size(push!(x,n), 1)
end

function test(n)
    max = 0
    for i in range(1, n)
        if i % 2 != 0
            y = sequencesize(i)
            # println(y)
            if y > max
                max = y
            end
        end
    end
    max
end

    
    