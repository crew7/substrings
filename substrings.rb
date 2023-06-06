dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    substr = dictionary.reduce( Hash.new(0) ) do |accumulator, dictionaryEntry|
        if word.include?(dictionaryEntry)
            accumulator[dictionaryEntry] += 1
            accumulator
        else
            accumulator
        end
    end
    substr
end

substrings("below",dictionary)