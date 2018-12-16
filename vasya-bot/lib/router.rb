class Router
  def self.evaluate(message)
    case
    when message.text.downcase == '/start',
         message.text.downcase == 'hello',
         message.text.downcase == '/stop'
      Greeter.run(message)
    when message.text.downcase.include?('what time is it'),
         message.text.downcase == '/time'
      Timer.run(message)
    when message.text.downcase.split[0] == '/blog'
      Blog.run(message)
    when message.text == '/help'
      {
        chat_id: message.chat.id,
        text: help_message
      }

    else
      {
        chat_id: message.chat.id,
        text: "I don't understand, enter `/help` to get some clue"
      }
    end
  end

  def self.help_message
    """
      enter /start, hello or /stop to  get basic greetings;
      ask what time it is to get the info;
      enter `/blog help` to get info about blog capabilities
    """
  end
end
