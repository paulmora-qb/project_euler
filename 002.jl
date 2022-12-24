# Question 2
function problem2()

    x = 2
    y = 3
    sum = 2

    while sum < 4_000_000
        z = x + y
        x = y
        y = z
        if y % 2 == 0
            sum += y
        end
    end
    return sum
end

problem2()