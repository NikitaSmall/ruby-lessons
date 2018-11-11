class FAQ
  FAQs = [
    { question: 'What is your name?', answer: 'King Arthur, Lord of the Brits' },
    { question: 'What is your quest?', answer: 'To seek the Holy Grail!' },
    { question: 'What is your favorite colour?', answer: 'Blue!' },
    { question: 'What is the average velocity of the unbounded swallow?', answer: "Well, I don't know that" }
  ]

  def initialize(client)
    @client = client

    if @client[:faq].find.count == 0
      @client[:faq].insert_many(FAQs)
    end
  end

  def questions
    @client[:faq].find.map do |faq|
      { id: faq['_id'], question: faq['question'] }
    end
  end

  def find(id)
    @client[:faq].find({ _id: BSON::ObjectId(id) }).first
  end
end
