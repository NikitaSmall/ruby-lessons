require 'yaml'

class Config
  attr_reader :selectors, :config

  SELECTORS_FILE = '/selectors.yaml'
  CONFIG_FILE = '/config.yaml'

  def initialize
    @selectors = YAML.load(File.read(File.dirname(__FILE__) + SELECTORS_FILE))
    @config = YAML.load(File.read(File.dirname(__FILE__) + CONFIG_FILE))
  end

  def message
    @config['messages'].sample
  end

  def account
    @config['accounts'].sample
  end
end
