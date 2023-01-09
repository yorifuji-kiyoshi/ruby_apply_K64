class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o
  
  def initialize
    @b=[*1..15].sample(5)
    @i=[*16..30].sample(5)
    @n=[*31..45].sample(5)
    @n[2] = '  '
    @g=[*46..60].sample(5)
    @o=[*61..75].sample(5)
  end

  def printCard
    puts " B |  I |  N |  G |  O"
    for a in 0..4 do
      puts "#{format('%3s',@b[a])}|#{format('%3s',@i[a])} |#{format('%3s',@n[a])} |#{format('%3s',@g[a])} |#{format('%3s',@o[a])}"
    end
  end
end

card1 = Bingo.new
card1.printCard
card2 = Bingo.new
card2.printCard
  
