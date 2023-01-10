# Menu class
class Menu
  attr_accessor :name
  attr_accessor :price

  # ininialize name and price for the dish
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  # print name and price of the dishs in menu
  def print_info
    return "#{name}  #{price}vnd"
  end
end

#-------------------------------------------------------

# Drink class
class Drink < Menu
  attr_accessor :size
  # DrinkクラスはMenuクラスから継承します。Drinkクラスには親クラスのインスタンス変数以外、ｓizeインスタンス変数があります

  
  # イニシャライズメソッドはオーバライドしなければなりません。Initializeにsuperも使うしsize変数も設定します。
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end

  # Drinkクラスで同じprint_infoメソッドもオーバライドも必要です。print_infoは名前と値段とサイズを返す。
  def print_info
    return "#{super}  #{size}"
  end
  
end

# -------Main------------------------------------------------
#　menuを定義します
menu1 = Menu.new('Phở', 35_000)
menu2 = Menu.new('Bún chả', 30_000)
menu3 = Menu.new('Bánh mì', 20_000)

# 新しい　drink1、drink2変数を定義します。
drink1 = Drink.new('Trà', 5000, 'Sサイズ')
drink2 = Drink.new('Trà', 10000, 'Mサイズ')

puts

puts '++++++++++++++ Menu ++++++++++++++'
# ｍenuとdrinkはそれぞれ配列のmenusの要素を代入します。
menus = [menu1, menu2, menu3, drink1, drink2]

#　最後は配列のそれぞれの要素をいんさつします
menus.each do |i|
  puts i.print_info
end

puts '+++++++++++++++++++++++++++'

# 