class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o

  def initialize
    @b = (01..15).to_a.sample(5)
    @i = (16..30).to_a.sample(5)
    @n = (31..45).to_a.sample(5)
    @n[2] = '  '
    @g = (46..60).to_a.sample(5)
    @o = (61..75).to_a.sample(5)
  end

  def showBingoSheet
    puts " B| I| N| G| O"
    @b.each_with_index do |e,index|
      printf("%2s|%2s|%2s|%2s|%2s\n",e,@i[index],@n[index],@g[index],@o[index])
    end
  end
end
bingo = Bingo.new
bingo.showBingoSheet
