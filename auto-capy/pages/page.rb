class Page
  include Capybara::DSL

  def initialize
    @selectors = CONFIG.selectors
    @config = CONFIG.config
  end

  def wait
    sleep(@config['default_sleep_value'])
  end
end
