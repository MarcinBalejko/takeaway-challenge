require './lib/order.rb'
describe Order do

    let(:dish) { Dish.new("pizza", 10)}

    describe '#select' do
        it 'responds to select' do
            expect(subject).to respond_to(:select)
        end
        it 'user can select certain dishes from the menu' do
            #subject.add_dish(dish)
            expect(subject).to respond_to(:select).with(1).argument
        end
        it 'selected dishes are stored' do
            dish = Dish.new("pizza", 10)
            subject.select(dish)
            expect(subject.ordered_dishes[0]).to eq(dish)
        end
    end
end