
using Combinatorics: permutations
using Primes: factor
using DataStructures: counter

function problem15()

    factorical_numerator = factor(Vector, factorial(big(40)))
    factorical_denominator = factor(Vector, factorial(big(20)))

    numerator_dict = counter(factorical_numerator)
    denominator_dict = counter(factorical_denominator)

    for (key, value) in denominator_dict
        numerator_dict[key] = numerator_dict[key] - 2 * denominator_dict[key]
    end

    product = 1
    for (key, value) in numerator_dict
        product *= key^value
    end
    return product
end

problem15()