def caesar_cipher(string, factor)
    new_str = []
    string_elements = string.split("")
    range_array = ("a".."z").to_a
    range_array_upcase = ("A".."Z").to_a

    for element in string_elements do

        if (!range_array.include?(element) & !range_array_upcase.include?(element))
            new_str.push(element)

        elsif element == element.upcase
            find_index = range_array_upcase.index(element)
            new_index = (find_index + factor)

            if new_index >= range_array_upcase.length
            new_index = new_index - range_array_upcase.length
            end

        new_str.push(range_array_upcase[new_index]) 
        
        else
        find_index = range_array.index(element)
        new_index = (find_index + factor)

            if new_index >= range_array.length
            new_index = new_index - range_array.length
            end

        new_str.push(range_array[new_index])
        end

    end

    return new_str.join("")

end


p caesar_cipher("What a string!", 5)