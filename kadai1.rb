class Menu
 attr_accessor :name
 attr_accessor :price
  
  def get_total_price(number)
	total_price = price * number
   total_price -= 10000 if number >= 3 
	"#{name} #{total_price}vnd"
	end
	end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

puts menu1.get_total_price(10)