require 'twilio-ruby'

class SMS
    def initialize(config, client: nil)
        @client = client || Twilio::RESET::Client.new(config[:accaunt_sid], config[:auth_token])
    end
    def deliver
    end
end