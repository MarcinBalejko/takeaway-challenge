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
        puts menu.order
        "Amount to pay: #{ total }"
    end
    
end