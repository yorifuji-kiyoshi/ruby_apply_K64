class Menu
 attr_accessor :name
 attr_accessor :price
 
  def initialize(name:, price:)
  @name = name
  @price = price
 end
  
 def info
   puts "#{@name} #{@price}"
end

menu1 = Menu.new(name:"Pho",price:30000)
menu2 = Menu.new(name:"Bun cha",price:40000)
menu3 = Menu.new(name:"Banh mi",price:20000)

menus = [menu1, menu2, menu3]
menus.each do | menu |
  menu.info
end
end
