class Menu
  attr_accessor :name
  attr_accessor :price

  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = price * count
    total_price -= 10_000 if count >= 3
    "#{name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000

# menu1に対してget_total_priceメソッドを呼び出してください
print 'Input number of Pho dishs: '
num = gets.to_i
puts menu1.get_total_price(num)

# get_total_priceメソッドはcount引数を渡すことです。countはPhoの数です。
# get_total_priceメソッドでtotal_priceの変数があります。最後の値段です。total_priceはprice掛けcountで計算します。
# もしcountは3以上、total_priceは10000引きます。戻り値は”名前+最後の値段”
