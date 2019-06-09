require './lib/list.rb'
describe List do
    it 'has menu' do
        expect(subject).to respond_to(:menu)
    end
    it 'can add dish to the menu' do
        dish = "pizza"
        price = 10
     
        subject.add_dish(dish, 10)
        expect(subject.menu.flatten[-2]).to eq dish
    end
end