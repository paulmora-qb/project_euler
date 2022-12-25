
function problem14()

    longest_chain = 1
    longest_chain_value = 1
    for value in 1:1_000_000

        initial_value = deepcopy(value)
        counter = 1
        while value != 1
            if value % 2 == 0
                value /= 2
            else
                value = 3 * value + 1
            end
            counter += 1
        end
        if counter > longest_chain
            longest_chain = counter
            longest_chain_value = initial_value
        end
    end
    return longest_chain_value, longest_chain
end

problem14()