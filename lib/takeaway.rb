require_relative 'menu'
class Takeaway
    attr_reader :menu, :selected_dishes
    def initialize(menu = Menu.new)
        @menu = menu       
        @selected_dishes = []
    end
    def total
        menu.calculator.sum
    end
end