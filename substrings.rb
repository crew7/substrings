dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
    words = words.downcase
    dictionary = downcase_array(dictionary)
    #Downcases to make case insensitive

    words = words.split(" ")

    substr = dictionary.reduce( Hash.new(0) ) do |accumulator, dictionaryEntry|
        words.each do |word|
            if word.include?(dictionaryEntry)
                accumulator[dictionaryEntry] += 1
            end
        end
        accumulator
    end
    substr
end

def downcase_array(arr)
    downcased = arr.map {|word| word.downcase}
end

puts substrings("Howdy partner, sit down! How's it going?",dictionary)