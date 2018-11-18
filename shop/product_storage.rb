class ProductStorage
  def initialize(client)
    @client = client
  end

  def all
    @client[:products].find # .to_a
  end
end
