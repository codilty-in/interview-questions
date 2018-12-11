class OddOccurrencesInArray
  def self.find(array, n)
    return nil if array.size <= 0
    return nil if n <= 0
    
    h = {}
    # O(n)
    array.each do |elem|
      # O(1)
      h[elem] = (h[elem] || 0 ) + 1
      if h[elem] > 1
        h.delete(elem)
      end
    end

    h.keys.first
  end
end
