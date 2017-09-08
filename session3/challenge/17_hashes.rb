# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse(linked_list)
  def data_grabber(linked_list, output = "")
    if !linked_list[:next]
      output = linked_list[:data].to_s + "\n" + output
    else
      output = linked_list[:data].to_s + "\n" + output
      output = data_grabber(linked_list[:next], output)
    end
    print output
  end
  data_grabber(linked_list)
end
