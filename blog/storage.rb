$stdout.sync = true
require 'json'

class Storage
  # { :id, :title, :text } - поля хранимых `объектов` (постов)
  FILENAME = 'storage.txt'

  def all
    from_file
  end

  def create(title, text)
    last_post = from_file.last
    id = last_post.nil? ? 1 : last_post[:id]+1

    posts_array = from_file << { id: id, title: title, text: text }
    to_file(posts_array)
  end

  def find(id)
    # @storage.find { |post| post[:id] == id }
    from_file.each do |post|
      if post[:id] == id
        return post
      end
    end

    nil
  end

  private

  def from_file
    begin
      str = File.open(FILENAME).read
      return [] if str.empty?

      JSON.parse(str, symbolize_names: true)
    rescue Errno::ENOENT => e
      puts e.message
      File.new(FILENAME, 'w').write('[]')
      []
    end
  end

  def to_file(array)
    str = array.to_json

    f = File.new(FILENAME, 'w')
    f.write(str)
    f.close
  end
end
