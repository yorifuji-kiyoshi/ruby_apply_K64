class Menu
  attr_accessor :name
  attr_accessor :price
  attr_accessor :size
  # get_total_priceメソッドを定義してください

  def initialize(name, price,size)
    @name = name
    @price = price
    @size = size
  end

  def info
    puts "#{name} #{price}vnd(#{size})"
  end
end


menu1 = Menu.new('Phở', 30000,NIL)
menu2 = Menu.new('Bún chả', 40_000,NIL)
menu3 = Menu.new('Bánh mì', 20_000,NIL)
menu4 = Menu.new('Trà chanh',15000,'sizeL')
menus = [menu1, menu2, menu3,menu4]
menus.each do |menu|
  menu.info
end