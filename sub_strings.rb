def sub_strings(word, dictionary)

    new_hash = Hash.new()

    dictionary.each do |wrd|
        if wrd.include?(word)
            if new_hash.include?(wrd)
                new_hash[wrd] += 1           
            else
            new_hash[wrd] = 1
            end
        end
    end
    
    return new_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p sub_strings("low", dictionary)