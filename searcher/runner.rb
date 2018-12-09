class Runner
  def initialize(options = {})
    @options = options
    configure
  end

  def run!
    if allowed_search_engines.include?(@options[:search_engine]) # 'google', 'bing'
      search(SearchPage.new(@options[:search_engine]), @options[:keyword])
    else
      raise 'unknown command!'
    end
  end

  private

  def allowed_search_engines
    Config.new.config['allowed_search_engines']
  end

  def search(page, search_string)
    page.search_string(search_string)
    links = page.search!
    save!(links)
  end

  def configure
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end

    Capybara.default_driver = :chrome
  end

  def save!(strings)
    File.write('links.txt', strings.join("\n"))
  end
end
