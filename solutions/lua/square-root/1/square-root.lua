local SquareRoot = {}

function SquareRoot.square_root(radicand)
    if radicand == 0 or radicand == 1 then
        return radicand
    end
    
    local low = 1
    local high = radicand
    local result = 0
    
    while low <= high do
        local mid = math.floor((low + high) / 2)
        local square = mid * mid
        
        if square == radicand then
            return mid
        elseif square < radicand then
            low = mid + 1
            result = mid
        else
            high = mid - 1
        end
    end
    
    return result
end

return SquareRoot