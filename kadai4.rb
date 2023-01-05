class Bingo
  
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o

  def initialize
    self.b = Array(01..15).sample(5)
    self.i = Array(16..30).sample(5)
    self.n = Array(31..45).sample(5)
    self.n[2] = '  '
    self.g = Array(46..60).sample(5)
    self.o = Array(61..75).sample(5)
  end

  def bingo_show
    puts "  B |  I |  N |  G |  O |"
    for a in 0..4 do
      [b,i,n,g,o].each do |character|
          print "#{format(' %2s ',character[a])}|"
        end
        puts
      end
  end
  
end

bingo = Bingo.new
bingo.bingo_show