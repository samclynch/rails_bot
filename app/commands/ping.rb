module Ping
    extend Discordrb::Commands::CommandContainer

    Bot.message(content: 'Ping!') do |event|
        event.respond 'Msg Pong!'
    end

    Bot.command(:ping) do |event|
        event.respond 'Command Pong!'
    end

end