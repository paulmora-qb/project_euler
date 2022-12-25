
using Primes: factor
using Combinatorics: combinations


function amicable_number(number)
    combinations_primes = Set(collect(combinations(factor(Vector, number))))
    products = append!([prod(x) for x in combinations_primes])
    products = filter!(x -> x ≠ number, products)
    return sum(products) + 1
end

function problem21()
    sum_of_amicable_numbers = 0
    for i in 1:(10_000)
        an_result = amicable_number(i)
        if i == amicable_number(an_result) && i != an_result
            sum_of_amicable_numbers += i
        end
    end
    return sum_of_amicable_numbers
end

problem21()