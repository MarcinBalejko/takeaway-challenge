require './lib/sms.rb'
describe Sms do
    subject(:sms) { described_class.new(client: client) }
    let(:client) { double (:client) }

    it 'delivers SMS with estimated time' do
        sms.deliver
    end
end