class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o

  def initialize
    self.b = (1..15).to_a.sample(5)
    self.i = (16..30).to_a.sample(5)
    self.n = (31..45).to_a.sample(5)
    self.g = (46..60).to_a.sample(5)
    self.o = (61..75).to_a.sample(5)
    n[2] = ' '
  end

  def print_bingo
    print "%2s| %2s| %2s| %2s| %2s|\n" % ["B", "I", "N", "G", "O"]
    for index in 0..4 do
      print "%2s| %2s| %2s| %2s| %2s|\n" % [b[index], i[index], n[index], g[index], o[index]]
    end
  end
  
end

bingo = Bingo.new

bingo.print_bingo