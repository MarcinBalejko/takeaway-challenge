require './lib/list.rb'
describe List do
    it 'has list of dishes' do
        expect(subject).to respond_to(:dishes)
    end
end