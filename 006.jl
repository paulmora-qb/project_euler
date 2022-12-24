
# Question 6

function problem6()

    sum_of_squared = sum(Array([i^2 for i in 1:100]))
    squared_sum = sum(Array([i for i in 1:100]))^2

    return squared_sum - sum_of_squared
end

problem6()