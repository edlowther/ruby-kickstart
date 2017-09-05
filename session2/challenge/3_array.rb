# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    str_as_array = self.split("")
    odd_chars = str_as_array.select.with_index do | x, i |
      i.even?
    end
    odd_chars.join("")
  end
end
