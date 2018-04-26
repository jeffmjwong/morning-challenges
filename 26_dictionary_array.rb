# Dictionary
#
# You've done this one before. This time, complete the challenge
# without using a hash. Arrays only.
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 6/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A precious stone'
#
# Check your solution by running the tests:
# ruby tests/26_dictionary_array_test.rb
#

class Dictionary
  attr_accessor :array
  def initialize
    @array = []
  end

  def add_word(word, definition)
    word_array = [word, definition]
    @array.push(word_array)
  end

  def lookup(word)
    counter = 0
    while counter < @array.length
      if @array[counter][0] == word
        return @array[counter][1]
      end
      counter += 1
    end
  end

  def total_words
    return @array.length
  end
end
