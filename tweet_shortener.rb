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
  tweet_text.collect { |x| dictionary.keys.include?(x.downcase.to_sym) ? dictionary[x.downcase.to_sym] : x }.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    if word_substituter(tweet).length > 140
      word_substituter(tweet)[0..136] << "..."
    else word_substituter(tweet)
    end
  else
    tweet
  end
end

# selective_tweet_shortener("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
