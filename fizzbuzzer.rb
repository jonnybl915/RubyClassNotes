class Fizzbuzzer

  def initialize(number)
    @number = number

  end

  def run(number)
    i = 1

    while i <= number

      if (i % 3) == 0 && (i % 5) == 0
        puts "FizzBuzz"

      elsif i % 3 == 0
        puts "Fizz"

      elsif i % 5 == 0
        puts "Buzz"

      else
        puts i
      end
      i += 1
    end

  end

end


f = Fizzbuzzer.new 3
f.run(80)








