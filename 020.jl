
using Primes: factor
using DataStructures: counter

function problem20()

    factorical_vector = factor(Vector, factorial(big(100)))
    return sum(digits(prod(factorical_vector)))

end

problem20()