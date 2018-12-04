# Can you call a private method outside a CallAPrivateMethod class using its object?
class CallAPrivateMethod
  private
    def call_me
      puts "I am here"
    end
end
