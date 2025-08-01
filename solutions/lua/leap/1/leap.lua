local leap_year = function(year)
    if year % 4 ~= 0 then
        return false
    elseif year % 100 ~= 0 then
        return true
    else
        return year % 400 == 0
    end
end

return leap_year