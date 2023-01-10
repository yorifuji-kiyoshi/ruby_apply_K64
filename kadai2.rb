class Menu
  attr_accessor :name
  attr_accessor :price

  # ininialize name and price for the dish
  # 名前と値段を
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = price * count
    total_price -= 10_000 if count >= 3
    price
  end

  # print name and price of the dishs in menu
  def print_info
    puts("#{name} #{price}")
  end
end

puts '-----Menu without using array-----'
menu1 = Menu.new('Phở', 35_000)
menu2 = Menu.new('Bún chả', 30_000)
menu3 = Menu.new('Bánh mì', 20_000)

menu1.print_info
menu2.print_info
menu3.print_info

puts '----------------------------------'
puts

puts '+++++Menu using array+++++'
menus = [menu1, menu2, menu3]

menus.each do |i|
  i.print_info
end

puts '+++++++++++++++++++++++++++'


