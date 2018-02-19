# require "pry"

def dictionary
  dictionary_hash = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
end

def word_substituter(tweet)
  tweet_text = tweet.split(" ")
  tweet_text.collect { |x| dictionary.keys.include?(x.downcase.to_sym) ? dictionary[x.downcase.to_sym] : x }.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet_array)
  tweet_array.each do |tweet| 
    if tweet.split(" ").length > 140
      puts word_substituter(tweet)}
    else
      puts tweet
end