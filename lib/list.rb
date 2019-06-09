class List
    attr_reader :menu
    def initialize
        @menu = {}
    end
    def add_dish(dish, price)
        @menu[dish] = price
    end
    def select(dish)
    end

end