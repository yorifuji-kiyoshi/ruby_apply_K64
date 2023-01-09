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

menu1 = Menu.new("Phở",30000)
# menu1.name = "Phở"
# menu1.price = "30000"

menu2 = Menu.new("Bún chả",40000)
# menu2.name = "Bún chả"
# menu2.price = "40000"

menu3 = Menu.new("Bánh mỳ",20000)
# menu3.name = "Bánh mỳ"
# menu3.price = "20000"

menus = [menu1,menu2,menu3]

menus.each do |menu|
  puts menu.show_menu
end


# puts menu1.show_menu
# puts menu2.show_menu
# puts menu3.show_menu