class GuessingGame
  def initialize(max)
    @max = max
    @answer = rand 1 .. max
    @tries_left = 5 + max / 100 - 1


  end
  def out_of_turns?()
      @tries_left == 0
  end

  def got_answer?
    @guess == @answer
  end

  def ask_for_num
    print "Please guess a number between 1 and #{@max}: "
    gets.chomp.to_i

  end

  def check_num(guess)
    @tries_left -= 1

    puts "Tries Left: #{@tries_left}"

    if guess == @answer
      puts "By George! You've Done It!!"

    elsif guess > @answer
      puts "That number is too high"

    else
      puts "That number is too low"


    end

  end

 #attr_reader :answer

  def correct_answer
    @answer
  end

end

g = GuessingGame.new 300

until g.out_of_turns? || g.got_answer?

  guess = g.ask_for_num
  g.check_num(guess)

end

if g.got_answer?
  puts "You Have Won"

else  "You Lost, the correct answer was in fact #{g.correct_answer}"

end

