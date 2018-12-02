class Runner
  def initialize(options = {})
    @options = options
    configure
  end

  def run!
    case @options[:command]
    when 'google'
      google_search(@options[:search_string])
    when 'telegram'
      telegram(@options[:code], @options[:phone], @options[:url], @options[:msg])
    else
      raise 'unknown command!'
    end
  end

  private

  def telegram(code, phone, url, msg)
    login_page = LoginPage.new

    login_page.visit_page
    login_page.enter_country_code(code)
    login_page.enter_phone_number(phone)
    login_page.click_next_step_button
    code_page = login_page.click_confirm_button

    code_page.annotate_user_interaction
    code_page.obtain_code_from_user
    code_page.enter_code

    chat_page = ChatPage.new
    chat_page.visit_chat(url)
    chat_page.submit_message(msg)
  end

  def google_search(search_string)
    search_page = SearchPage.new

    search_page.search_string(search_string)
    links = search_page.search!
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
