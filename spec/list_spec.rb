require './lib/list.rb'
describe List do
    it 'has menu' do
        expect(subject).to respond_to(:menu)
    end

end