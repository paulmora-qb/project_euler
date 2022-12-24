
using Primes: factor
using Combinatorics: combinations

function problem12()

    limits = 5
    keep_going = true
    i = 2
    while keep_going
        list_of_factors = factor(Vector, sum(1:i))
        if length(Set(collect(combinations(list_of_factors)))) + 1 > limits
            keep_going = false
        else
            i += 1
        end
    end
    return i
end

problem12()