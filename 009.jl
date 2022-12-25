
using Formatting: format

function problem9()

    for i in 1:1_000
        for j in 1:i
            sqrt_number = sqrt(i^2 + j^2)
            if isinteger(sqrt_number) && sqrt_number > i
                if i + j + sqrt_number == 1_000
                    return format((i * j * sqrt_number), commas=true)
                end
            end
        end
    end
end
problem9()