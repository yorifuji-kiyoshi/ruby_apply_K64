class Bingo
  attr_accessor :board, :letters
  
  def initialize 
    @letters=["B","I","N","G","O"]
    @board = [5.times.map{rand(1..15)}, 5.times.map{rand(16..30)}, 5.times.map{rand(31..45)}, 5.times.map{rand(46..60)}, 5.times.map{rand(61..75)}].transpose
    board[2][2] = " "
  end

  def display
    puts letters.map { |i| i.to_s.rjust(3) }.join(" |")
    puts board.map { |a| a.map { |i| i.to_s.rjust(3) }.join (" |")}
  end
end

bingo1 = Bingo.new
bingo1.display