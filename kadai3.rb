class Menu
  attr_accessor :name
  attr_accessor :price
  
  def initialize(name:,price:)
    self.name = name
    self.price = price 
  end
  def info
    puts "#{self.name} #{self.price}vnd"
  end
end
class Drink < Menu
  attr_accessor :size
  def initialize(name,price,size)
    super(name:name,price:price)
    @size = size
  end
  def info
    puts "#{self.name} #{self.price}vnd #{self.size}"
  end
end
menu1 = Menu.new(name:"Phở",price:30000)
menu2 = Menu.new(name:"Bún Chả",price:40000)
menu3 = Menu.new(name:"Bánh Mì",price:20000)
drink1 = Drink.new("Trà",5000,"(Sサイト)")
drink2 = Drink.new("Trà",10000,"(Mサイト)")

menus = [menu1,menu2,menu3,drink1,drink2]
menus.each do |menu|
  menu.info
end