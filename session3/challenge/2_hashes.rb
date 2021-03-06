# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(number)
  result = {}
  (1..number).each do |x|
    if x.odd?
      result[x] = []
      (1..x).each do |y|
        if y.even?
          result[x].push(y)
        end
      end
    end
  end
  result
end
