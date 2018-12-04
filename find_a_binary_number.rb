class FindABinaryNumber
  # O(n) = join function
  # O(logn) = binary number function
  # Total = O(nlogn)
  def self.to_binary(n)
    raise 'Negative numbers not supported' if n < 0
    raise 'Numbers must be > 0' if n == 0
    return '001' if n == 1
    quotient = n
    binary = []
    while quotient > 1
      binary.push(( quotient % 2))
      quotient = quotient/2

      if quotient == 1
        binary.unshift(quotient)
      end
    end

    binary.join("")
  end

  # Total = O(n + nlogn)
  def self.find_gap(n)
    # Get the binary array O(nlogn)
    binary = to_binary(n)
    # Split the array O(n)
    zeroes_array = binary.split("1")
    # even numbers has zeroes to the end. Pop them - O(1)
    zeroes_array.pop if(n % 2 == 0)
    # Fetch max value in the array after popping up O(n)
    zeroes_array.map { |zeroes| zeroes.length }.max.to_i
  end
end
