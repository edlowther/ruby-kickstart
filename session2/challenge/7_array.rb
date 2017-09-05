# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples

def alternate_words(sentence)
  punctuation = ["!","@","$","#","%","^","&","*","(",")","-","=","_","+","[","]",":",";",",",".","/","<",">","?","\\","\|"]
  punctuation.each do |char|
    sentence = sentence.gsub(char, " ")
  end
  sentence = sentence.split(" ")
  sentence = sentence.select.with_index do | x, i |
    i.even?
  end
  sentence
end

# alternate_words("If you want to accomplish something in the world, idealism is not enough--you need to choose a method that works to achieve the goal. In other words, you need to be pragmatic.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get al^ong?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
