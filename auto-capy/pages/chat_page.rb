class ChatPage < Page
  def visit_chat(chat_url)
    page.visit(chat_url)
    wait
  end

  def submit_message(message)
    enter_message(message)
    submit
  end

  def enter_message(message)
    page.find(@selectors['message_field']).set(message)
  end

  def submit
    page.find(@selectors['send_button']).click
  end
end
