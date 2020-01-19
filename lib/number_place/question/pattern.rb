
module Pattern
  COUNT = 1
  class << self
    def shuffle(array)
      @array = array
      case rand(COUNT)
      when 0; zero
      end
    end

    # 9つのランダムな数値を3✖︎3(i, j, k )に分解。上3行は
    # i, j, k
    # j, k, i
    # k, i, j
    # の並び順にする
    # これによって生成された3✖︎(3✖︎3)の配列を用いて同様の処理を下6行にも行う。
    def zero
      value = []
      value[0] = @array
      # TODO: Refactor
      value[1] = [@array[3],@array[4],@array[5],@array[6],@array[7],@array[8],@array[0],@array[1],@array[2]]
      value[2] = [@array[6],@array[7],@array[8],@array[0],@array[1],@array[2],@array[3],@array[4],@array[5]]
      value[3] = [@array[2],@array[0],@array[1],@array[5],@array[3],@array[4],@array[8],@array[6],@array[7]]
      value[4] = [@array[5],@array[3],@array[4],@array[8],@array[6],@array[7],@array[2],@array[0],@array[1]]
      value[5] = [@array[8],@array[6],@array[7],@array[2],@array[0],@array[1],@array[5],@array[3],@array[4]]
      value[6] = [@array[1],@array[2],@array[0],@array[4],@array[5],@array[3],@array[7],@array[8],@array[6]]
      value[7] = [@array[4],@array[5],@array[3],@array[7],@array[8],@array[6],@array[1],@array[2],@array[0]]
      value[8] = [@array[7],@array[8],@array[6],@array[1],@array[2],@array[0],@array[4],@array[5],@array[3]]
      value
    end

    def one
    end
  end
end