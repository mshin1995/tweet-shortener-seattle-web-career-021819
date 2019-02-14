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
  new_tweet = []
  tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word.downcase)
      new_tweet << word = dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end