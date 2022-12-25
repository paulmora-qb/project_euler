
using Primes: primes

function problem10()
    return sum(primes(1, 2_000_000))
end

problem10()