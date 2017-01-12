class Counter

  def initialize(number=0)
    @num = number
  end

  def up
    @num += 1
  end

  def count
    @num
  end

  def reset
    @num = 0
  end

end