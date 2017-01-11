class GuessingGame
  def initialize(max)
    @max = max
    @answer = rand 1 .. max
    @tries_left = 5 + max / 100 - 1


  end
  def max
    @max

  end
  def out_of_turns?()
      @tries_left == 0
  end

  def got_answer?
      @won
  end

  def check_num(guess)
    @tries_left -= 1
    if guess == @answer
      @won = true
    elsif guess < @answer
      puts 'Too low!'
      :low
    else
      puts 'Too high!'
      :high
    end
  end

 #attr_reader :answer

  def correct_answer
    @answer
  end

end

class Player
  def initialize(_)
  def ask_for_num game

    print "Please guess a number between 1 and #{game.max}: "
    gets.chomp.to_i

  end
end
end
class SmartAI
  def initialize game
    @min = 1
    @max = game.max
  end
  def ask_for_num game
    @last_guess = (@max + @min) / 2
    puts "Guessing '#{@last_guess}'"

  end

  def record_result result
    if result == :low
      @min = @last_guess
    elsif result == :high
      @max = @last_guess
    end
  end
end

class BadAI
  def initialize(_)

  end
  def ask_for_num game
    guess = rand 1 .. game.max
    puts "Guessing '#{guess}'"
  end

end

g = GuessingGame.new 100
#p = BadAI.new g
l = SmartAI.new g

until g.out_of_turns? || g.got_answer?

  guess = l.ask_for_num g
  result = g.check_num(guess.to_i)
  l.record_result result

end

if g.got_answer?

  puts "You Have Won"

else  "You Lost, the correct answer was in fact #{g.correct_answer}"

end

# what percentage of the time does the smart AI win the game
# set up the game to play ~10,000 times and see how many result in winning
# our game is deterministic. with this strategy, which number will the smartAI ALWAYS lose on?




