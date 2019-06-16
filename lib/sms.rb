require 'rubygems'
require 'twilio-ruby'

account_sid = 'XXX15c0ea3d5e6ac26d54173fc015ee91a'
auth_token = 'XXXb07d57d7af0030bf1bd0af79f9df5'
@client = Twilio::REST::Client.new(account_sid, auth_token)

time = Time.now
time += 3600

message = @client.messages.create(
from: '+48XXX230425',
to: '+48XXX522649',
body: "Thank you! Your order was placed and will be delivered before #{time}."
)

puts message.sid