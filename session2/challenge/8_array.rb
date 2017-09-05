# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:

def got_three?(elements)
  elements.each.with_index do |x, i|
    if i < elements.length - 2
      if x == elements[i + 1]
        if x == elements[i + 2]
          return true
        end
      end
    end
  end
  false
end

# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
