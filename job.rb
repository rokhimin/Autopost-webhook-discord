require 'discordrb/webhooks'
require 'ostruct'
require 'yaml'

CONFIG = OpenStruct.new YAML.load_file 'config/config.yaml'

WEBHOOK_URL = CONFIG.discord.freeze

client = Discordrb::Webhooks::Client.new(url: WEBHOOK_URL)
client.execute do |builder|
  builder.content = 'message from heaven'
  builder.add_embed do |embed|
    embed.description = 'GOD is real'
    embed.timestamp = Time.now
  end
end

puts 'sucess'