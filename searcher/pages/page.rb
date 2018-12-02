require 'capybara/rspec'

class Page
  include Capybara::DSL

  def initialize
    config = Config.new
    @selectors = config.selectors
    @config = config.config
  end

  def wait
    sleep(@config['default_sleep_value'])
  end
end
