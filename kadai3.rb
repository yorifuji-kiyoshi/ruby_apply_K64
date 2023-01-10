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

class Drink < Menu
  attr_accessor :size
  
  def initialize(name,price,size)
    super(name,price)
    @size = size
  end

  def info
    "#{name} #{price}vnd (#{size} size)"
  end
end

menu1 = Menu.new("Pho",30000)
menu2 = Menu.new("Bun cha",40000)
menu3 = Menu.new("Banh mi",20000)

drink1 = Drink.new("Tra", 5000, "S")
drink2 = Drink.new("Tra", 10000, "M")

menus = [menu1,menu2,menu3,drink1,drink2]

menus.each do |menu|
  puts menu.info
end
