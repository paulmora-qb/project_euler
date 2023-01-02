
function problem25()
    n = 1
    x = BigInt(1)
    y = BigInt(0)
    z = BigInt(0)
    while length(digits(z)) < 1_000
        z = x + y
        y = x
        x = z
        n += 1
        println(n)
    end
end

problem25()
