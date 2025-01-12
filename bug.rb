```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

# The bug: Incorrect use of attr_accessor which bypasses the setter method. 
my_object.instance_variable_set(:@value, 30)
puts my_object.value # Output: 30 (Bypass setter method)
```