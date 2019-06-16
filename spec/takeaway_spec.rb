require './lib/takeaway.rb'
describe Takeaway do
    
    let(:menu) { Menu.new }

    it 'has a menu' do
        expect(subject).to respond_to(:menu)
    end
    describe '#total' do
        it 'responds to total' do
            expect(subject).to respond_to(:total)
        end
        it 'shows the total amount to pay' do
            subject.menu.select('pizza')
            subject.menu.select('lasagne')
            expect(subject.total).to eq(30)
        end
    end

end