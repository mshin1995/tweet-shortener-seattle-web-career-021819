def dictionary
  hash = {"hello" => "hi", 
          "to" => "2",
          "two" => "2",
          "too" => "2",
          "for" => "4",
          "four" => "4",
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