require "discordrb"

# rubocop:disable Style/GlobalVars
ChannelID = 393246908010725399

Bot = Discordrb::Commands::CommandBot.new(
    token: Rails.application.credentials.dig(:discord, :token),
    client_id: Rails.application.credentials.dig(:discord, :client_id),
    prefix: "!"
)
Dir["#{Rails.root}/app/commands/*.rb"].each { |file| require file} 
Bot.run(true)

# Print out the bot join channel link
puts "Inivte URL: #{Bot.invite_url}"