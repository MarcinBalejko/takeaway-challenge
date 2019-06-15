require_relative 'takeaway'
class Menu
    attr_reader :our_offer
    def initialize
        @our_offer = [
            pizza = Dish.new("pizza", 10),
            lasagne = Dish.new("lasagne", 20),
            spaghetti = Dish.new("spaghetti", 15),
            bigos = Dish.new("bigos", 15),
            pierogi = Dish.new("pierogi", 30)
        ]       
    end
end