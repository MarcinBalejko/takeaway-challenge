require './lib/list.rb'
describe List do
    it 'has menu' do
        expect(subject).to respond_to(:menu)
    end
    describe '#add_dish' do
        it 'can add dish to the menu' do
            dish = "pizza"
            price = 10
            subject.add_dish(dish, 10)
            expect(subject.menu.flatten[-2]).to eq dish
        end
    end
    describe '#select' do
        it 'responds to select' do
            expect(subject).to respond_to(:select)
        end
        it 'user can select certain dishes from the menu' do
            subject.add_dish("pizza", 10)
            expect(subject).to respond_to(:select).with(1).argument
        end
        it 'selected dishes are stored' do
            subject.add_dish("pizza", 10)
            subject.select("pizza")
            expect(subject.selected_dishes.flatten[-2]).to eq "pizza"
        end
    end

end