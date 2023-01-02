
using DelimitedFiles: readdlm

function problem22()
    names_matrix = readdlm("p022_names.txt", ',', String)[1, :]
    sorted_names_matrix = sort(names_matrix)

    total_sum = 0
    for (position, name) in enumerate(sorted_names_matrix)
        total_sum += position * sum([Int(x) - 64 for x in name])
    end
    return total_sum
end

problem22()