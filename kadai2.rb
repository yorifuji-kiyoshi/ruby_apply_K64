class Menu
 attr_accessor :name
 attr_accessor :price
  def info
    puts "#{@name} #{@price}vnd"
  end

   def initialize(name, price) 
     @name= name
     @price = price
   end
end

menu1 = Menu.new('Phở', 30000)
menu2 = Menu.new('Bún chả', 400_0_0)
menu3 = Menu.new('Bánh mì', 20000)

menus = [menu1, menu2, menu3]

menus.each do | menu |
  menu.info
end

