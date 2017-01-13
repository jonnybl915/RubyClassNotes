class Bob
  def initialize
    @responses = ['Whatever.', 'Whoa, chill out!', 'Sure.', 'Fine. Be that way!']
  end
  def hey(remark)
    if (remark[-1] == '.') || (remark.include?("'s")) || (remark.include?("\n"))
      @responses[0]
    elsif (remark.upcase == remark) && (remark.count("a-zA-Z") > 0)
      @responses[1]
    elsif remark[-1] == '?'
      @responses[2]
    else
      @responses[3]
    end
  end
end


