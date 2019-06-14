require_relative 'dish'
class Takeaway
    attr_reader :menu, :selected_dishes
    def initialize
        @menu = {}
        @selected_dishes = []
    end
    def add_dish(dish)
        name = dish.name?
        price = dish.price?
        @menu[name] = price
    end
    def select(dish)
        @selected_dishes << dish
    end
    def total
        total_sum = 0
        @selected_dishes.each do |x|
            total_sum = x.price? + total_sum
        end
        total_sum    
    end
    def confirm
        time = Time.new
        delivery_time = time + 3600
        "Thank you! Your order was placed and will be delivered before #{delivery_time}"
    end

end