class Bingo
    attr_accessor:b   
    attr_accessor:i  
    attr_accessor:n 
    attr_accessor:g 
    attr_accessor:o
    def initialize
        [*1..5].each do |y|
            [*1..5].each do |i|
            if i==1 
                @b = rand(1..15)
            end
            if i==2 
                @i = rand(16..30)
            end
            if i==3 
                @n = rand(31..45)
            end
            if i==4 
                @g = rand(46..60)
            end
            if i==5 
                @o = rand(61..75)
            end
            end
            if y==3
                puts " #{b} | #{i} |    | #{g} | #{o}   "
            else
                puts " #{b} | #{i} | #{n} | #{g} | #{o}   "
            end
        end 
        end
end
puts " B | I | N | G | O   "
row1 = Bingo.new
