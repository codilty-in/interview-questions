class CyclicRotation
  def self.rotate(array, k)
    return array if(k < 0 && k > 100)
    k.times do |n|
      pop = array.pop
      array.unshift(pop)
    end

    array
  end

  def self.rotate_2(array, k)
    b = []

    k.times
  end
end
