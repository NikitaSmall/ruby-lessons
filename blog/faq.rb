class FAQ
  FAQs = [
    { id: 1, question: 'What is your name?', answer: 'King Arthur, Lord of the Brits' },
    { id: 2, question: 'What is your quest?', answer: 'To seek the Holy Grail!' },
    { id: 42, question: 'What is your favorite colour?', answer: 'Blue!' },
    { id: 3, question: 'What is the average velocity of the unbounded swallow?', answer: "Well, I don't know that" }
  ]

  def questions
    FAQs.map do |faq|
      { id: faq[:id], question: faq[:question] }
    end
  end

  def find(id)
    FAQs.find { |faq| faq[:id] == id }
  end
end
