class Fizzbuzzer

  def initialize
    @replacements = {}
  end

  def register_new_rule(number, replacement)
    # Instance @replacements[2] = 'A'
    @replacements[number] = replacement
  end

  def apply_one(n)

    # matches = @replacements.select do |base, replacement|
    #    n % base == 0
    # end

    matches = []
    @replacements.each do |base, replacement|
      if n % base == 0
        matches.push(replacement)
      end

    end

    if matches.length == 0
     n
    else
      combined_matches = matches.join('');

    end
    puts combined_matches
  end

  def rule_for(number)
    @replacements[number]
  end

  def run(range_max)
#run method should
    (1 .. range_max).to_a.map do |x|

      # this will run on any instance of the Fizzbuzzer class
      #self.apply_one(x)

      apply_one(x)

    end



#use logic to print i when the rule matches
#if any of the rules work or multiple rules
#max (1 .. max).each do ...
#max.times do
#upto(max) do

   # ------ WRONG ------
    # i = 1
    # while i <= range_max
    #
    #   @replacements.each do |k, v|
    #
    #     (i % k == 0) ? (puts v) : (puts i)
    #
    #   end
    #
    #   i += 1
    #
    # end

  end

end

#f = Fizzbuzzer.new 3
#f.run(20)

f = Fizzbuzzer.new
f.register_new_rule(3, "Fizz")
f.register_new_rule(5, "Buzz")
f.run(16)








