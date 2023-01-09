class Menu
    attr_accessor :name
    attr_accessor :price
    
    def initialize(name, price)
      @name = name
      @price = price
    end
    
    def show_menu
      return "#{self.name} #{self.price}vnd"
    end
  end
  
  class Drink < Menu
    attr_accessor :size

    def initialize(name, price, size)
        super(name, price)
        @size = size
        end
    def show_menu
        return "#{self.name} #{self.price}vnd #{self.size}ml"
    end
   end

class Food < Menu
    attr_accessor :calorie

    def initialize(name, price, calorie)
        super(name, price)
        @calorie = calorie
        end
    def show_menu
        return "#{self.name} #{self.price}vnd #{self.calorie}cal"
    end
   end

class SetMenu < Menu
    attr_accessor :drink
    attr_accessor :food

    def initialize(name, price, drink, food)
        super(name, price)
        @drink = drink
        @food = food
        end
    def show_menu
        return "#{self.name} #{self.price}vnd #{self.drink} #{self.food}"
    end
   end

menu1 = Drink.new("Coca", 20000, 500)
menu2 = Food.new("Burger", 50000, 500)
menu3 = SetMenu.new("Combo1", 60000, "Coca", "Burger")

puts menu1.show_menu
puts menu2.show_menu
puts menu3.show_menu