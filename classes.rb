class Counter

#this is where you determine what is shared between classes.
  def initialize(number)
    #puts "init"
    @number = number
  end

  def up
   # puts "up"
    @number += 1
    #puts "@number=#{@number}"

  end

  def count
    #puts "count"
    @number

  end

  def reset(num=0) #setting a default value for the argument so that if there is NOT an argument it will set to 0
      @number = num
    puts "reset"

  end

end

c = Counter.new 5
d = Counter.new 10


c.up
d.up
c.up

puts c.count  # 2
puts d.count  # 1


c.reset 20
d.reset

puts c.count   # 0

puts d.count   # 1

