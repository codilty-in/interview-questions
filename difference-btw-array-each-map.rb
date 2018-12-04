class DifferenceBtwArrayEachMap
  # >> arr = [1,2,3,4]
  #
  # # This will print 2,4,6,8 but will return [1,2,3,4]
  # >> arr.each {|x| puts x*2; x*2 }
  # 2
  # 4
  # 6
  # 8
  # => [1, 2, 3, 4]
  #
  #
  # # This will also print 2,4,6,8 but returns [2,4,6,8]
  # >> arr.map {|x| puts x*2; x*2 }
  # 2
  # 4
  # 6
  # 8
  # => [2, 4, 6, 8]
end
