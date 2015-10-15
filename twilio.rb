require 'rubygems'
require 'twilio-ruby'

account_sid = "AC2162d007c6e9b0ea52d3e36ef2b340ab"
auth_token = "2e2d5d641eaeac541a51fd01eceb0b55"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
	:from => "+18027943267",
	:to => "+17208413144",
	:body => ";) - from your secret admirer"
)

puts message.to

puts "Ask the Magic 8 Ball anything!"
user_input = gets.chomp

answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes, definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"].sample
puts answers

