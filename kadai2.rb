class Menu
 attr_accessor :name
 attr_accessor :price
  def initialize (name,price)
    self.name = name
    self.price = price
  end  
  def inten
    puts "#{self.name} #{self.price}vnd"
  end
end
menu1 = Menu.new("Pho", 30000)
menu2 = Menu.new("Bun Cha", 40000)
menu3 = Menu.new("Banh Mi", 20000)

menus = [menu1, menu2, menu3]

for i in 0..2
  menus[i].inten
end
#　インスタンス
# setsurettsu khoi tao 

# ten va gia gans giá trị 

# in ten wo setsurettsu shi masu
# kansu 関数
# hiên ra arawareru