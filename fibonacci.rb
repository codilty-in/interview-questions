# Assuming fibonacci series 1,1,2,3,4,5,9
class Fibonacci
  def self.fib(n)
    if n == 0 || n == 1
      return 1
    end

    fib(n - 1) + fib(n - 2)
  end
end
