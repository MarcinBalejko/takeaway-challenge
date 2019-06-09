require './lib/dish.rb'
describe Dish do

    let(:subject) { Dish.new("pizza", 10) }

    it 'has a name' do
        subject
        expect(subject.name).to eq "pizza"
    end
    
end