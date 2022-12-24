
using Primes: factor, primes
using DataStructures: counter
using Printf

# question 5
function problem5()

    range_number = 20

    primes_to_20 = primes(1, range_number)
    number_of_primes = length(primes_to_20)
    number_dict = Dict(zip(primes_to_20, zeros(number_of_primes)))

    for i in 1:range_number
        prime_numbers = factor(Vector, i)
        prime_dict = counter(prime_numbers)
        for (key, value) in prime_dict
            if prime_dict[key] > number_dict[key]
                number_dict[key] = value
            end
        end
    end

    product = 1
    for (key, value) in number_dict
        product *= key^value
    end
    @printf "%.0f .\n" product
end
problem5()