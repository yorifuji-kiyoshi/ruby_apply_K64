# BINGO

class Bingo 
    attr_accessor :b 
    attr_accessor :i
    attr_accessor :n
    attr_accessor :g
    attr_accessor :o

    def initialize
        @b = (1..15).to_a.shuffle
        @i = (16..30).to_a.shuffle
        @n = (31..45).to_a.shuffle
        @n[2] = " "
        @g = (46..60).to_a.shuffle
        @o = (61..75).to_a.shuffle
    end

    def show
        puts "B  | I  | N  | G  | O"
        puts "-----------------"
        puts "#{format('%2s',@b[0])} | #{format('%2s',@i[0])} | #{format('%2s',@n[0])} | #{format('%2s',@g[0])} | #{format('%2s',@o[0])}"
        puts "#{format('%2s',@b[1])} | #{format('%2s',@i[1])} | #{format('%2s',@n[1])} | #{format('%2s',@g[1])} | #{format('%2s',@o[1])}"
        puts "#{format('%2s',@b[2])} | #{format('%2s',@i[2])} | #{format('%2s',@n[2])} | #{format('%2s',@g[2])} | #{format('%2s',@o[2])}"
        puts "#{format('%2s',@b[3])} | #{format('%2s',@i[3])} | #{format('%2s',@n[3])} | #{format('%2s',@g[3])} | #{format('%2s',@o[3])}"
        puts "#{format('%2s',@b[4])} | #{format('%2s',@i[4])} | #{format('%2s',@n[4])} | #{format('%2s',@g[4])} | #{format('%2s',@o[4])}"
    end
end

bingo = Bingo.new
bingo.show