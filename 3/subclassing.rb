module Floopable
  def something
    "this is something in a module"
  end
end

class FloopMixin
  include Floopable # allows access to module
end

class A # implicit < Object
  def a_method
    "this is a method from the A class"
  end
end

class B < A
  def multiply(n)
    2 * 5
  end
end

class Doubler < B
  def multiply(n)
    super(n) * 2
  end

end

c = Doubler.new
puts c.multiply(3)



f = FloopMixin.new
puts f.something