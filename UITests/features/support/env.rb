require 'rspec/expectations'
require 'capybara'
require 'capybara/dsl'
require 'cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'csv'
require 'data_magic'
require 'rest-client'
require 'documentos_br'
require 'pry-byebug'
World(RSpec::Matchers)

#SitePrism.configure do |config|
#    config.use_implicit_waits = true
#end

def setup_for_chrome
  Capybara.register_driver :chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: {
        args: ['--start-maximized']
      }
    )
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: caps
    )
  end
  Capybara.default_driver = :chrome
  Capybara.default_max_wait_time = 10
  Capybara.javascript_driver = :webkit
  Capybara.page.driver.browser.manage.window.maximize
end

def setup_for_firefox
  Capybara.register_driver :selenium do |app|
    options = Selenium::WebDriver::Firefox::Options.new
    options.profile = 'default'
    #options.args << '--headless' # remove headless tag to open browser

    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 120
    client.open_timeout = 120
    Capybara::Selenium::Driver.new(
      app,
      options: options,
      marionette: true,
      http_client: client
    )
  end
  Capybara.run_server = false
  Capybara.default_driver = :selenium
  Capybara.page.driver.browser.manage.window.maximize
  Capybara.page.driver.browser.manage.delete_all_cookies
  Capybara.reset_session!
end

def setup_browser(browser)
  case browser.to_sym
  when :chrome then setup_for_chrome
  else setup_for_firefox
  end
end

browser = ['chrome', 'firefox'].include?(ENV['browser']) ? ENV['browser'].to_sym : :firefox
setup_browser(ENV.fetch('browser', :firefox))

AMARO_URL = 'https://amaro.com'
