class SearchPage < Page
  def initialize(search_engine)
    super()
    @search_engine = search_engine

    page.visit(@config["#{@search_engine}_search_url"])
  end

  def search_string(message)
    page.find(@selectors["#{@search_engine}_search_field"]).set(message)
  end

  def search!
    page.find(@selectors["#{@search_engine}_search_button"]).click
    wait
    page.all(@selectors["#{@search_engine}_search_result_link"]).map { |link| link[:href] }
  end
end
