class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(num)
    if num >= 3
      total_price = num * self.price -  10000
    else
      total_price = num * self.price 
    end
   return "#{self.name} #{total_price}vnd"
 end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000
puts "Phở 30000vnd"
puts "いくつ　買いますか。"

num = gets.to_i
puts menu1.get_total_price(num)


# menu1に対してget_total_priceメソッドを呼び出してください

