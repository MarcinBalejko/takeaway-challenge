class List
    attr_reader :menu, :selected_dishes
    def initialize
        @menu = {}
        @selected_dishes = {}
    end
    def add_dish(dish, price)
        @menu[dish] = price
    end
    def select(dish)
        @selected_dishes[dish] = @menu[dish]
        
    end

end