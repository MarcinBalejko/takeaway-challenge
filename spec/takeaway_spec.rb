require './lib/takeaway.rb'
describe Takeaway do
    
    let(:dish) { Dish.new("pizza", 10) }

    it 'has a menu' do
        expect(subject).to respond_to(:menu)
    end
    it 'instantiates a new order' do
        expect(subject).to respond_to(:order)
    end
    describe '#add_dish' do
        it 'can add dish to the menu' do
            subject.add_dish(dish)
            expect(subject.menu.flatten[0]).to eq dish.name?
        end
    end
    describe '#total' do
        it 'responds to total' do
            expect(subject).to respond_to(:total)
        end
        it 'shows the total amount to pay' do
            2.times { subject.order.select(dish) }
            expect(subject.total).to eq(20)
        end
    end

end