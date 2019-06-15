require_relative 'dish'
require_relative 'order'
require_relative 'menu'
class Takeaway
    attr_reader :menu, :selected_dishes, :order, :menu, :sms
    def initialize(order = Order.new, menu=Menu.new, sms: nil)
        @menu = {}
        @selected_dishes = order.ordered_dishes
        @order = order
        @sms = sms
        @menu = menu
    end
    def add_dish(dish)    #
        name = dish.name?
        price = dish.price?
        @menu[name] = price
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