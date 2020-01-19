
require "number_place/question/question"
require "number_place/answer/answer"

class Error < StandardError; end
# Your code goes here...

class NumberPlace
  attr_reader :question, :answer
  def initialize
    answer = Answer.new
    @answer = Array.new(answer.result.map{|i| Array.new(i)})
    @question = Question.new(answer).result
  end
end



