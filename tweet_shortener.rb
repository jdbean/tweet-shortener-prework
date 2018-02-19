require "pry"

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
      tweet_text.collect { |x| dictionary.keys.include?(":#{x}) ? dictionary[:x] : x }
  binding.pry
end

word_substituter("Hey buddy, how are you")
