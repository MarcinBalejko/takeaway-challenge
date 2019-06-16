require './lib/menu.rb'
describe Menu do
    describe '#select' do
        it 'can select dishes from the menu' do
            subject.select('pizza')
            expect(subject.order[0]).to eq 'pizza'
        end
    end
        it 'selected dishes are stored' do
            subject.add_dish(dish)
            subject.select(dish)
            expect(subject.selected_dishes[0]).to eq dish
        end
    end