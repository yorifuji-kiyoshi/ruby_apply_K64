class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください

  def initialize(name:, price:)
    @name = name
    @price = price
  end

  def info()
    puts "#{@name} #{@price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize( name, price, size)
    super(price:price, name:name)
    @size = size
  end

  def info()
    puts "#{@name} #{@price}vnd (#{@size} size)"
  end
end

drink1 = Drink.new( "Tra da", 5000, "M")
drink2 = Drink.new( "Tra sua", 50000, "S")

menus = [drink1, drink2]

menus.each{
  |obj|
  obj.info()
}