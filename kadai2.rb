class Menu
  attr_accessor :name
  attr_accessor :price
  
  def initialize(name,price)
    self.name = name
    self.price = price
  end
  
  def print_menu
    puts "#{self.name} - #{self.price}vnd"
  end
end
menu1 = Menu.new("pho",30000)
menu2 = Menu.new("bun cha",40000)
menu3 = Menu.new("banh mi",20000)

menu = [menu1,menu2,menu3]

for i in 0..2 do
  menu[i].print_menu
end

# hairisetsu mang
# fukumu bao gom
# setsuretsu khai tao


