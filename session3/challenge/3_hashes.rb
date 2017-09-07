# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(string)
  result = Hash.new { |this_hash, key| this_hash[key] = 0 }
  if string.length > 0
    string.downcase!.split(" ").each do |word|
      result[word] += 1
    end
  end
  result
end
