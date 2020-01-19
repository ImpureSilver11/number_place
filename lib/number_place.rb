require "number_place/version"

module NumberPlace
  class << self
    def hoge
      'self'
    end
  end
  
  class NumberPlace
    def test
      'hoge'
    end
  end
  class Error < StandardError; end
  # Your code goes here...
end
