class Fizzbuzzer

  def initialize
    @replacements = {}
  end

  def run(number)

    i = 1
    
    while i <= number

      @replacements.each do |k, v|

        (i % k == 0) ? (puts v) : (puts i)

      end

      i += 1

    end

  end

  def replace (number, string)

    @replacements[number] = string

  end

end

#f = Fizzbuzzer.new 3
#f.run(20)

f = Fizzbuzzer.new
f.replace(3, "Fizz")
f.replace(5, "Buzz")
f.run(16)








