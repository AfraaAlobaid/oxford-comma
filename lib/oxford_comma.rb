def oxford_comma(array)
    string = ""

    if array.size == 1
        return array[0]
    elsif array.size == 2
        return "#{array[0]} and #{array[1]}"
    else 
        array.each_with_index do |element, index|
            if index > 0 && index < array.size-1 
                string << ", "
            elsif index == array.size-1
                string << ", and "
            end
            string << element
        end 
    end
    return string
end