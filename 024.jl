
using Combinatorics: nthperm

function array_to_int(number)
    n = 0
    l = length(number)
    for i = 1:l
        n += number[i] * 10^(l - i)
    end
    return n
end

function problem24()
    return array_to_int(nthperm([i for i in 0:9], 1_000_000))
end

problem24()