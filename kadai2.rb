class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください

  def initialize(name, price)
    @name = name
    @price = price
  end

  def info
    puts "#{name} #{price}vnd"
  end
end

menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Pizza', 60_000)
menu3 = Menu.new('Bun cha', 35_000)

menus = [menu1, menu2, menu3]
menus.each do |menu|
  menu.info
end