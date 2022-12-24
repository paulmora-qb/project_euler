
function problem14()

    longest_chain = 1
    for value in 1:1_000_000

        counter = 1
        while value != 1
            if value % 2 == 0
                value /= 2
            else
                value = 3 * value + 1
            end
            counter += 1
        end
        longest_chain = maximum([counter, longest_chain])
    end
    return longest_chain
end

problem14()