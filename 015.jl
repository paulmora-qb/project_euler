
using Combinatorics: permutations

function problem15()


    moves = 4
    number_of_left_or_rights = Int(moves / 2)

    factorial(moves) / (factorial(number_of_left_or_rights) * factorial(number_of_left_or_rights))

end

problem15()