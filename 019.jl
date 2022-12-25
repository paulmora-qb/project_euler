
function problem19()

    number_of_sundays = 0
    current_date = Date(1901, 1, 1)

    while current_date <= Date(2000, 12, 31)
        current_date += Dates.Day(1)
        if Dates.dayname(current_date) == "Sunday" && Dates.day(current_date) == 1
            number_of_sundays += 1
        end
    end
    return number_of_sundays

end

problem19()