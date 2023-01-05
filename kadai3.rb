class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def show
    print "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  def initialize(name,size,price)
    super(name,price)
    @size = size
  end
  def show
    print "#{@name} #{@price} vnd (#{@size}サイズ)"
  end
end

menu1 = Menu.new("Phở",30000)
menu2 = Menu.new("Bún chả",40000)
menu3 = Menu.new("Bánh mì",20000)
drink1 = Drink.new("Trà","S",5000)
drink2 = Drink.new("Trà","M",10000)
menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
  puts menu.show
end