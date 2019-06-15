require './lib/menu.rb'
describe Menu do
    it ' has some offer' do
        expect(subject).to respond_to(:our_offer)
    end
end