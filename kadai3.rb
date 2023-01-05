class Menu
attr_accessor :name
attr_accessor :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Drink < Menu
  attr_reader :size
  def initialize(name, price, size)
    super( name, price)
    @size = size
  end
end

menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)
menu4 = Drink.new("Trà", 5000, "Sサイズ")
menu5 = Drink.new("Trà", 10000, "Mサイズ")

menus = [menu1, menu2, menu3, menu4, menu5]

menus.each do |menu| 
  puts "#{menu.name} #{menu.price}vnd" + (menu.instance_of?(Drink) ? " (#{menu.size})" : "")
end 