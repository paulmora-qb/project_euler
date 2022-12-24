
# Question 1
function problem1()
    n::Int = 0
    for i in 1:(1000-1)
        if i % 3 == 0 || i % 5 == 0
            n += i
        end
    end

    println(n)
end
problem1()
