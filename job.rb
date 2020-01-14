require 'discordrb/webhooks'

WEBHOOK_URL = 'https://discordapp.com/api/webhooks/595513961873670144/sgcJcOL8c9Sgkw4f8wAaiwajwPPn-cjQRixbB3ZMDmP7fcadHaZwsQDqiY1h1tx77604'.freeze

client = Discordrb::Webhooks::Client.new(url: WEBHOOK_URL)
client.execute do |builder|
  builder.content = 'message from heaven'
  builder.add_embed do |embed|
    embed.description = 'GOD is real'
    embed.timestamp = Time.now
  end
end

puts 'sucess'