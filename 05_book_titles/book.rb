class Book
# write your code here
    def title
        @title
    end

    def title=(word)
        @title  = (word.split(" ").map.with_index {|i, index| capitalize_map(i, index)}).join(" ")
    end

    def capitalize_map(i, index)
        little_words = ["and", "or", "over", "the", "in", "of", "a", "to", "an"]
        if ((little_words.include?(i.downcase)) and index != 0)
            return i
        else
        return i.capitalize
        end
    end
end
