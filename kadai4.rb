class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o

  def initialize
    # to_a: to array -> pick 5 different element in array: use sample() method
    @b = Array(01..15).sample(5)
    @i = Array(16..30).sample(5)
    @n = [*31..45].sample(5)
    @g = (46..60).to_a.sample(5)
    @o = (61..75).to_a.sample(5)
    @n[2] = '' # free center
    # @n[2] = ' ' # free center -> still correct
  end

  def showBingoSheet
    puts " B| I| N| G| O"
    for index in 0..4 do
      row = [] # create & reset row[]
      [b, i, n, g, o].each do |character|
        row.push(character[index])
      end
        # puts "#{format('%2s',row[0])}|#{format('%2s',row[1])}|#{format('%2s',row[2])}|#{format('%2s',row[3])}|#{format('%2s',row[4])}"
        printf("%2s|%2s|%2s|%2s|%2s\n", row[0], row[1], row[2], row[3], row[4]) # Like C Lang
    end
  end
end

sheet = Bingo.new
sheet.showBingoSheet