require './lib/list.rb'
describe List do
    
    let(:dish) { Dish.new("pizza", 10) }

    it 'has a menu' do
        expect(subject).to respond_to(:menu)
    end
    describe '#add_dish' do
        it 'can add dish to the menu' do
            subject.add_dish(dish)
            expect(subject.menu.flatten[0]).to eq dish.name?
        end
    end
    describe '#select' do
        it 'responds to select' do
            expect(subject).to respond_to(:select)
        end
        it 'user can select certain dishes from the menu' do
            subject.add_dish(dish)
            expect(subject).to respond_to(:select).with(1).argument
        end
        it 'selected dishes are stored' do
            subject.add_dish(dish)
            subject.select(dish)
            expect(subject.selected_dishes[0]).to eq dish
        end
    end

end