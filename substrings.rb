def substrings(word, dictionary)
  word = word.downcase
  dictionary.each_with_object(Hash.new(0)) do |substring, result|
    result[substring] += word.scan(substring).length if word.include?(substring)
  end
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)