
# Question 3
function problem3()

    n = 600851475143
    d = 2
    while n > 1
        if n % d == 0
            n /= d
        else
            d += 1
        end
    end
    return d
end

problem3()
