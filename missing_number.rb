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
  return nil if missing_element_array.size <= 0

  big = a.max
  small = a.min
  expected_array = (small..big).to_a

  expected_array.reduce(:+) - missing_element_array.reduce(:+)
end



=begin


This is a demo task.

Write a function:

def solution(a)

that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

Given A = [1, 2, 3], the function should return 4.

Given A = [−1, −3], the function should return 1.

Write an efficient algorithm for the following assumptions:

N is an integer within the range [1..100,000];
each element of array A is an integer within the range [−1,000,000..1,000,000].
Copyright 2009–2018 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.

=end



def solution(a)
  # write your code in Ruby 2.2
  return 1 if a.size <= 0

  b = {}

  a.each do |value|
    b[value] = true
  end

  for i in 1..(a.size + 1) do
    if !b[i]
      return i
    end
  end

  return a.size + 1
end




Example test:    (['test1a', 'test2', 'test1b', 'test1c', 'test3'], ['Wrong answer', 'OK', 'Runtime error', 'OK', 'Time limit exceeded'])
WRONG ANSWER  (got 66 expected 33)

Example test:    (['codility1', 'codility3', 'codility2', 'codility4b', 'codility4a'], ['Wrong answer', 'OK', 'OK', 'Time limit exceeded', 'OK'])
WRONG ANSWER  (got 75 expected 50)



def solution(t, r)
  # Figure total no of test cases
    total_cases = t.map {|elem| elem.chars[elem =~ /[1-9]/]}.uniq.count
  # Loop through all test cases
  # Hash the pass ones
  h = {}
  failures = ['Wrong answer', 'Time limit exceeded', 'Runtime error']

  #TODO : Fix array to figure out same group test cases.
  t.each_with_index do |value, index|
    if failures.include?(r[index])
     next
    else
      h[value] = r[index]
    end
  end

  # calculate the percentage
  pass_test_cases = h.size
  # return the percentage
  ((pass_test_cases.to_f/total_cases.to_f) *  100).to_i
end





def escape_cont_dups(s)
    # Edge case where s is []
    return "" if s.size <= 0

    # Check if 'AA', 'BB' and 'CC'
    if(s.index('AA')  || s.index('BB') || s.index('CC'))
      chars = s.chars
      temp = []
      previous_value = nil

      # ACCBBC
      chars.each do |char|
        puts temp.join('')
        if previous_value && previous_value == char
          temp.pop
        else
          temp << char
        end

        previous_value = char
      end
      escape_cont_dups(temp.join(''))
    else
      return s
    end
  end
