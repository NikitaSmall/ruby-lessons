class Greeter
  def self.run(message)
    { chat_id: message.chat.id, text: message_text(message) }
  end

  def self.message_text(message)
    case message.text.downcase
    when 'hello', '/start'
      "Hello, #{message.from.first_name}"
    when '/stop'
      "Farewell, #{message.from.first_name}"
    end
  end
end
