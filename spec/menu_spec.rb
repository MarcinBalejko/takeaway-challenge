require './lib/menu.rb'
describe Menu do
    describe '#add_dish' do
        it 'can add dish to the menu' do
            subject.select('pizza')
            expect(subject.order[0]).to eq 'pizza'
        end
    end
    describe '#select' do
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