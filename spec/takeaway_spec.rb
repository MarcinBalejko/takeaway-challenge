require './lib/takeaway.rb'
describe Takeaway do
    
    let(:restaurant) { described_class.new }
    let(:menu) { Menu.new }
    let(:dish) { 'pizza' }

    it 'has a menu' do
        expect(restaurant).to respond_to(:menu)
    end
    describe '#total' do
        it 'responds to total' do
            expect(restaurant).to respond_to(:total)
        end
        it 'shows the total amount to pay' do
            restaurant.menu.select(dish)
            restaurant.menu.select(dish)
            expect(restaurant.total).to eq(restaurant.menu.calculator.sum)
        end
        it 'places the order' do
            restaurant.menu.select(dish)
            allow(restaurant).to receive(:require_relative)
            restaurant.place_order
        end

    end

end