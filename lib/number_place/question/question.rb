
require "number_place/numplace_validator/numplace_validator"
require "number_place/question/pattern"

class Question
  attr_reader :result
  # 13
  def initialize(answer, difficulty = 13)
    @answer = answer
    @result = answer.result
    while difficulty > 0
      difficulty -= 1 if replaceas?
    end
  end

  # 判別する
  def replaceas?
    row, col = rand(9), rand(9)

    validator = NumplaceValidator.new(@answer)
    # 縦の配列
    # 縦一列で0がないか、横一列で0がないか、3✖︎3内で0がないか判別
    if validator.columns?(row: row) || validator.rows?(col: col) || validator.three_cell?(row: row, col: col)
      # 置き換える
      @result[row][col] = 0
      true
    end
    true
  end

end
