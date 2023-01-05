class Row
  attr_accessor :col1
  attr_accessor :col2
  attr_accessor :col3
  attr_accessor :col4
  attr_accessor :col5

  def initialize(row)
    @col1 = rand(1..15)
    @col2 = rand(16..30)
    @col3 = rand(31..45)
    @col4 = rand(46..60)
    @col5 = rand(61..75)
    if row == 3
      @col3 = " "
    end
  end
  def show
    puts "#{@col1.to_s.rjust(2)} | #{@col2.to_s.rjust(2)} | #{@col3.to_s.rjust(2)} | #{@col4.to_s.rjust(2)} |#{@col5.to_s.rjust(3)}"
  end
end

row = []
puts " B |  I |  N |  G |  O"
row << Row.new(1)
row << Row.new(2)
row << Row.new(3)
row << Row.new(4)
row << Row.new(5)

row.each do |eRow|
   eRow.show
end