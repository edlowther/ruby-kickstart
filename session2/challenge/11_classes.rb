# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  def initialize number_of_bottles
    if number_of_bottles < 0
      @number_of_bottles = 0
    elsif number_of_bottles > 99
      @number_of_bottles = 99
    else
      @number_of_bottles = number_of_bottles
    end
  end

  def convert_to_english(number)
    below_ten = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    teens = ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
    prefixes = ["Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    suffixes = ["", "-one", "-two", "-three", "-four", "-five", "-six", "-seven", "-eight", "-nine"]
    if number < 10
      if number == 1
        return below_ten[number] + " bottle "
      else
        return below_ten[number] + " bottles "
      end
    elsif number < 20
      return teens[number % 10] + " bottles "
    else
      return prefixes[number / 10 - 2] + suffixes[number % 10] + " bottles "
    end
    number.to_s
  end


  def print_song
    output = ""
    @number_of_bottles.downto(1) do |i|
      output += convert_to_english(i) + "of beer on the wall,\n"
      output += convert_to_english(i)+ "of beer,\n"
      output += "Take one down, pass it around,\n"
      output += convert_to_english(i - 1) + "of beer on the wall.\n"
    end
    puts output
  end

end

beerSong = BeerSong.new(108)
beerSong.print_song()
