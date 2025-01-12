```ruby
class MyClass
  attr_accessor :value # use attr_reader and attr_writer if you want more control

end

my_object = MyClass.new
my_object.value = 10
puts my_object.value # Output: 10

# Attempting to bypass the setter using instance_variable_set will still use the setter method
my_object.instance_variable_set(:@value, 30)
puts my_object.value # Output: 30

#However, if we want to prevent this unexpected behavior completely, we can remove attr_accessor and use the getter and setter methods directly:

class MyClass2
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    raise "Illegal assignment, use an appropriate method" if new_value < 0 #Example of Input Validation
    @value = new_value
  end
end

my_object2 = MyClass2.new(10)
puts my_object2.value # Output: 10

# Attempting to bypass the setter using instance_variable_set will still use the setter method
begin
  my_object2.instance_variable_set(:@value, 30)
  puts my_object2.value # Output: 30
rescue => e
  puts e # handles the exception properly
end
```