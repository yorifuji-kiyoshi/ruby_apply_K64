class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o

  def initialize
    self.b = (0..15).to_a.sample(5)
    self.i = (16..30).to_a.sample(5)
    self.n = (31..45).to_a.sample(5)
    self.g = (46..60).to_a.sample(5)
    self.o = (61..75).to_a.sample(5)
    self.n[2] = nil
  end 

  def show
  
    printf("%2s | %2s | %2s | %2s | %2s\n","B","I","N","G","O")
    for x in 0..4 do
      printf("%2d | %2d | %2s | %2d | %2d\n",self.b[x],self.i[x], self.n[x],self.g[x], self.o[x])
    end 
  end
end

bingo1 = Bingo.new
bingo1.show