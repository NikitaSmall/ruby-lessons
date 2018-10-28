class Storage
  # { :id, :title, :text } - поля хранимых `объектов` (постов)
  def initialize
    @storage = []
  end

  def all
    @storage
  end

  def create(title, text)
    last_post = @storage.last
    id = last_post.nil? ? 1 : last_post[:id]+1

    @storage << { id: id, title: title, text: text }
  end

  def find(id)
    # @storage.find { |post| post[:id] == id }
    @storage.each do |post|
      if post[:id] == id
        return post
      end
    end

    nil
  end
end
