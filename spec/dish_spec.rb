require './lib/dish.rb'
describe Dish do

    let(:subject) { Dish.new("pizza", 10) }

    it 'has a name' do
        expect(subject.name).to eq "pizza"
    end
    it 'has a price' do
        expect(subject.price).to eq 10
    end
    
end