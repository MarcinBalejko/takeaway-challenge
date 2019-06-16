require './lib/menu.rb'
describe Menu do
    describe '#select' do
        it 'user can select certain dishes from the menu' do
            subject.select('pizza')
            expect(subject).to respond_to(:select).with(1).argument
        end
        it 'selected dishes are stored' do
            subject.select('pizza')
            expect(subject.order[0]).to eq 'pizza'
        end
    end
end