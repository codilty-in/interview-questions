# Input: Given an array
# Ouput: Find a missing element in the array

# Assumptions:
  # 1. Elements are continuos numbers

# Known thing
  # Sum of n continuos numbers = n (n + 1) / 2

# input: [0,1,3,4,5]
# Assumption with this method is that series must be 0,1,2 .... n format
def missing_element_on_a_n_series_sorted_array(a)
  big = a.max
  (big * (big + 1)/2) - a.reduce(:+)
end

# input: [34,35,37,38,39,40]
def missing_element_on_a_array(missing_element_array)
  big = a.max
  small = a.min
  expected_array = (small..big).to_a

  expected_array.reduce(:+) - missing_element_array.reduce(:+)
end
