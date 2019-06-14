require_relative 'takeaway'
require_relative 'dish'
class Order
    attr_reader :ordered_dishes
    def initialize
        @ordered_dishes = []
    end
    def select_from_menu(dish)
        @ordered_dishes << dish
    end
end