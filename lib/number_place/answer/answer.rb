
require "number_place/question/pattern"

class Answer
  include Pattern
  attr_reader :result
  def initialize(num=9)
    @result = Pattern.shuffle((1..num).to_a.shuffle)
  end

  def columns(row)
    (0..8).map{ |num| @result[num][row] }
  end
end

