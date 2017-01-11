class GuessingGame
  def initialize
    @answer = 70 # rand 1 .. 100
    @tries_left = 5


  end
  def out_of_turns?()
      @tries_left == 0
  end

  def got_answer?
    @n == @answer70
  end

  def ask_for_num?
    print "Please guess a number between 1 and 100: "
    @guess = gets.chomp.to_i

  end

  def check_num
    @tries_left -= 1

    puts "Tries Left: #{@tries_left}"

    if @guess == @answer
      puts "By George! You've Done It!!"
    elsif @guess > @answer
      puts "That number is too high"
    else
      puts "That number is too low"


    end

  end
end

g = GuessingGame.new

until g.out_of_turns? || g.got_answer?

  g.ask_for_num
  g.check_num

end

