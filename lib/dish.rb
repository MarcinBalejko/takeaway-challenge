require_relative 'takeaway'
class Dish
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
    def name?
        @name
    end
    def price?
        @price
    end
end