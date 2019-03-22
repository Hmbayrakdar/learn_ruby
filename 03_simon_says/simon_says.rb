#write your code here
def echo(word) 
    word
end

def shout(word) 
    word.upcase
end

def repeat(word, times=2) 
    ((word + " ") * times).strip
end

def start_of_word(word, index) 
    return word.slice(0,index)
end

def first_word(word) 
    word.split(" ")[0]
end

def titleize(word) 
    (word.split(" ").map.with_index {|i, index| capitalize_map(i, index)}).join(" ")
end

def capitalize_map(i, index)
    little_words = ["and", "or", "over", "the"]
    if ((little_words.include?(i.downcase)) and index != 0)
        return i
    else
    return i.capitalize
    end
end
