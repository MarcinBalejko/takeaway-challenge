require_relative 'menu'
class Takeaway
    attr_reader :menu, :your_order
    def initialize(menu = Menu.new)
        @menu = menu       
        @your_order = menu.order
    end
    def total
        menu.calculator.sum
    end
    def bill
        fail 'Please select your meal' if menu.order.empty? == true
        puts menu.order
        "Amount to pay: #{total}"
    end
    def place_order
        fail 'Please select your meal' if menu.order.empty? == true
        require_relative 'sms.rb'
        bill
    end
    
end