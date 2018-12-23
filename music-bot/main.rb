require 'openssl'
require 'telegram/bot'

require_relative './game_state'

token = '762040110:AAGc8IB6WCJVTF9iGif0EtOeGXowOtF-E7E'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

words = ['apple', 'elephant', 'school', 'paint', 'king']

alphabet = {
  keyboard: [
    %w(A B C D E F G H),
    %w(I J K L M N O P Q),
    %w(R S T U V W X Y Z)
  ]
}

answers = Telegram::Bot::Types::ReplyKeyboardMarkup.new(alphabet)
game = GameState.new

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      game.pick(words.sample)
      text = "The word is chosen! Here it is: #{game.visible_answer}. Let's play!"
      bot.api.send_message(chat_id: message.chat.id, text: text, reply_markup: answers)
    when ('A'..'Z'), ('a'..'z')
      game.process(message.text.downcase)
      bot.api.send_message(chat_id: message.chat.id, text: game.status, reply_markup: answers)
    when '/stop'
      kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
      bot.api.send_message(chat_id: message.chat.id, text: 'Sorry to see you go :(', reply_markup: kb)
    end
  end
end
