require 'openssl'
require 'telegram/bot'

require 'mongo'

require_relative './lib/greeter'
require_relative './lib/timer'
require_relative './lib/blog'
require_relative './lib/router'

token = '644282743:AAFv2S0zlJQQwbxI487gg27YGg5F4F6bx1U'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    response = Router.evaluate(message)
    bot.api.send_message(response)
  end
end
