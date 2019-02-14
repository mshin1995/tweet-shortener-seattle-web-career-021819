def dictionary
  hash = {"hello" => "hi", 
          "to, two, too" => "2", 
          "for, four" => "4",
          "be" => "b",
          "you" => "u",
          "at" => "@",
          "and" => "&"
  }
end

def word_substituter(tweet)
  ntweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end