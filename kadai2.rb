class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end
=begin
menus = []
menus << Menu.new("Phở",30000)
menus << Menu.new("Bún chả",40000)
menus << Menu.new("Bánh mì",20000)
=end
menu1 = Menu.new("Phở",30000)
menu2 = Menu.new("Bún chả",40000)
menu3 = Menu.new("Bánh mì",20000)
menus = [menu1, menu2, menu3]

menus.each do |menu|
  puts "#{menu.name} #{menu.price}vnd"
end