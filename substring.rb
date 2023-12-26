def substring(word, dictionary)
    result = Hash.new()
    low_text = word.downcase

    dictionary.each do |str|
      matches = low_text.scan(str).length
      result[str] = matches unless matches == 0
    end
    result
end    

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substring("Howdy partner, sit down! How's it going?", dictionary)