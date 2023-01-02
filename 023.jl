
using Primes: factor
using Combinatorics: combinations, with_replacement_combinations

function abundant_number(number)

    combinations_primes = Set(collect(combinations(factor(Vector, number))))
    products = append!([prod(x) for x in combinations_primes], 1)
    sum_of_divisors = sum(filter!(x -> x ≠ number, products))

    return number < sum_of_divisors

end

function problem23()
    all_abundant_numbers = [i for i in 1:28123 if abundant_number(i)]
    all_combinations = collect(with_replacement_combinations(all_abundant_numbers, 2))

    sum_of_two_abundant_numbers = [sum(x) for x in all_combinations]

    return sum(setdiff([x for x in 1:28123], sum_of_two_abundant_numbers))
end

problem23()

