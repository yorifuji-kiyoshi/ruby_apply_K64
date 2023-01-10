class Menu
  attr_accessor :name
  attr_accessor :price
  
  def initialize(name,price)
    @name = name
    @price = price
  end
  
  def info
    "#{name} #{price}vnd"
  end
end

menu1 = Menu.new("Pho",30000)
menu2 = Menu.new("Bun cha",40000)
menu3 = Menu.new("Banh mi",20000)

menus = [menu1,menu2,menu3]

menus.each do |menu|
  puts menu.info
end
