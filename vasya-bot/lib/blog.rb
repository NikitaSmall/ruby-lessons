class Blog
  def self.run(message)
    { chat_id: message.chat.id, text: evaluate(message) }
  end

  def self.evaluate(message)
    case message.text.downcase.split[1]
    when 'create'
      create(message)
    when 'read'
      read(message)
    when 'list'
      list(message)
    when 'update'
      update(message)
    when 'delete'
      delete(message)
    when 'help'
      help
    else
      "I can't understand the blog command, try `/blog help`"
    end
  end

  def self.create(message)
    client[:posts].insert_one({
      author: "#{message.from.first_name} #{message.from.last_name}",
      topic: message.text.split[2],
      text: message.text.split[3..(message.text.split.length-1)].join(' ')
    })

    'Record is secured!'
  end

  def self.read(message)
    posts = client[:posts].find({topic: message.text.split[2]})
    if posts.count == 0
      return 'no posts with such theme'
    end

    posts.map do |post|
      "`#{post['topic']}` by `#{post['author']}`:\n#{post['text']}"
    end.join("\n")
  end

  def self.list(message)
    posts = client[:posts].find

    if posts.count == 0
      return 'the blog is empty!'
    end

    posts.map do |post|
      "`#{post['topic']}` by `#{post['author']}`"
    end.join("\n")
  end

  def self.update(message)
    client[:posts].update_one({ topic: message.text.split[2] }, {
      author: "#{message.from.first_name} #{message.from.last_name}",
      topic: message.text.split[2],
      text: message.text.split[3..(message.text.split.length-1)].join(' ')
    })

    'the post is updated'
  end

  def self.delete(message)
    client[:posts].delete_many({ topic: message.text.split[2] })

    "The rest:\n#{list(message)}"
  end

  def self.help
    """
    /blog create [topic] text - to create a blog post
    /blog list - to see the posts
    /blog read [topic] - to read one topic
    /blog update [topic] text - to update mentioned topic
    /blog delete [topic] - to delete topic
    /blog help - to see this message
    """
  end

  def self.client
    if @client
      return @client
    end

    @client = Mongo::Client.new(['rpiserver.tk'], database: 'teleblog')
  end
end
