class SearchPage < Page
  def initialize
    super

    page.visit(@config['search_url'])
  end

  def search_string(message)
    page.find(@selectors['search_field']).set(message)
  end

  def search!
    page.find(@selectors['search_button']).click
    page.all(@selectors['search_result_link']).map { |link| link.text }
  end
end
