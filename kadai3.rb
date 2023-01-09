class Menu
  attr_accessor :name
  attr_accessor :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end
  
  def show_menu
    return "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name, price, size)
    super(name,price)
    @size = size
  end

  def show_menu
    return "#{self.name} #{self.price}vnd (#{self.size})"
  end
end
menu1 = Menu.new("Phở",30000)
menu2 = Menu.new("Bún chả",40000)
menu3 = Menu.new("Bánh mỳ",20000)
drink1 = Drink.new("Trà", 5000,"Sサイズ")
drink2 = Drink.new("Trà", 10000,"Mサイズ")

menus = [menu1,menu2,menu3,drink1,drink2]

menus.each do |menu|
  puts menu.show_menu
end