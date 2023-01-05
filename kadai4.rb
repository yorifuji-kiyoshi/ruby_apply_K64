class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o
  def initialize
    self.b = Array.new(5)
    self.i = Array.new(5)
    self.n = Array.new(5)
    self.g = Array.new(5)
    self.o = Array.new(5)
  end
  def random_array(array,left_i,right_i)
    for i in 0..4 do
      array[i] = rand(left_i .. right_i)
    end
  end
  
  def print_bingo()
    for i in 0 .. 4 do
      puts "#{format('%2s',self.b[i])} | #{format('%2s',self.i[i])} | #{format('%2s',self.n[i])} | #{format('%2s',self.g[i])} | #{format('%2s',self.o[i])} "
    end
  end
end
arr = Bingo.new
arr.random_array(arr.b,1,15)
arr.random_array(arr.i,16,30)
arr.random_array(arr.n,31,45)
arr.random_array(arr.g,46,60)
arr.random_array(arr.o,61,75)
arr.n[2] = ""
  puts" B |  I |  N |  G |  O "
  arr.print_bingo()

