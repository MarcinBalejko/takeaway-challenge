require_relative 'dish'
class List
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
    

end