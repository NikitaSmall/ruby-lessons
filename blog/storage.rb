require 'mongo'
require 'bson'

class Storage
  def initialize(client)
    @client = client
  end

  def all
    @client[:posts].find
  end

  def create(title, text)
    @client[:posts].insert_one({ title: title, text: text })
  end

  def find(id)
    @client[:posts].find({ _id: BSON::ObjectId(id) }).first
  end
end
