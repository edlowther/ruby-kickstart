# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C",
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

def grade(num_books, reads_books)
  poss_results = ["D", "C", "B", "A"]
  result_index = 0
  if num_books >= 10
    result_index += 1
  end
  if num_books > 20
    result_index += 1
  end
  if reads_books
    result_index += 1
  end
  poss_results[result_index]
end
