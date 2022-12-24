
# Question 4

function problem4()

    maximum = 0
    for a in 999:-1:100
        for b in a:-1:100
            mp = a * b
            if string(mp) == reverse(string(mp)) && maximum < mp
                maximum = mp
            end
        end
    end
    return maximum
end

problem4()
