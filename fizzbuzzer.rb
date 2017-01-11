class Fizzbuzzer

  def initialize(number)
    @number = number

  end

  def run(number)
    i = 1

    while i <= number

      if i % @number == 0
        puts "Fizz"
      else
        puts i
      end
      i += 1
    end

  end

end


f = Fizzbuzzer.new 3
f.run(20)




