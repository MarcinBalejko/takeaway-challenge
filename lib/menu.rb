require_relative 'takeaway'
class Menu
    attr_reader :order, :offer, :calculator
    def initialize(offer = {'pizza' => 10, 'lasagne' =>20, 'spaghetti' => 25 }, order = [])
        @offer = offer
        @order = order
        @calculator = []
    end
    def select(dish)
        if @offer.include?(dish)
            @calculator << @offer[dish]
            @order << dish
        end
    end 
end