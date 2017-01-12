class Fizzbuzzer

  def initialize
    @replacements = {}
  end
  def register_new_rule(number, replacement)
    @replacement = replacement
  end

  def apply_one(n)
    @replacement = n
  end
  def run(number)

    i = 1

#use logic to print i when the rule matches
#if any of the rules work or multiple rules
#max (1 .. max).each do ...
#max.times do
#upto(max) do

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







