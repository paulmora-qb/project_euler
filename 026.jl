
using Primes: factor

function termination_indication(number)
    factor_set = factor(Set, number)
    if any([x in [2, 5] for x in factor_set])
        return false
    else
        return true
    end
end

function divides_evenly(p, d)

    numerator = ""
    for i in 1:p
        numerator *= "9"
    end

    numerator = parse(Int, numerator)

    numerator_primes = factor(Dict, numerator)
    denominator_primes = factor(Dict, d)

    for (key, values) in denominator_primes
        if haskey(numerator_primes, key) == false
            return false
        elif 
        if values - numerator_primes[keys] > 0
            println("stop")
        end
    end



end

function problem26()


    repeating_dict = Dict()
    repeating_decimals = [i for i in 2:1_000 if termination_indication(i)]

    for i in repeating_decimals
        p = 1
        println(i)
        while (10^p - 1) % i != 0
            p += 1
        end
        repeating_dict[i] = p
    end

p = 1
for i in 1:100
    BigInt(p *= 10)
    println(p)
end
