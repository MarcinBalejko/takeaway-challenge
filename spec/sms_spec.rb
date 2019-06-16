require './lib/sms.rb'
describe SMS do
    subject(:sms) { described_class.new(config, client: client) }

    let(:client) { double (:client) }

    let(:config) do
        {
        account_sid: "123",
        auth_token: "23fds"
        }
    end

    it 'delivers SMS with estimated time' do
        sms.deliver
    end
end