class NumplaceValidator

  def initialize(answer)
    @answer = answer
  end

  def columns?(row:)
    !@answer.columns(row).map{|num| num == 0}.any?
  end

  def rows?(col:)
    !@answer.result[col].map{|num| num == 0}.any?
  end

  def three_cell?(row:, col:)
    cell_row = row.div(3) * 3
    cell_col = col.div(3) * 3
    !(cell_row .. cell_row+2).map{|row|
      (cell_col .. cell_col+2).map{|col|
        @answer.result[row][col] == 0
      }
    }.flatten.any?
  end
end