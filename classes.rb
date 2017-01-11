class Counter

#this is where you determine what is shared between classes.
  def initialize
    #puts "init"
    @number = 0
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

  def reset
    puts "reset"
    @number = 0
  end

end

c = Counter.new
d = Counter.new

c.up
d.up
c.up

puts c.count  # 2
puts d.count


c.reset

puts c.count   # back to 0

puts d.count

