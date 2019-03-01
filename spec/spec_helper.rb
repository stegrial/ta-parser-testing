require 'bundler/setup'
require 'ostruct'
require 'selenium-webdriver'
require 'rspec'
require 'rspec-steps'
require 'capybara/rspec'
require 'true_automation/rspec'
require 'true_automation/driver/capybara'

def camelize(str)
  str.split('_').map {|w| w.capitalize}.join
end

spec_dir = File.dirname(__FILE__)
$LOAD_PATH.unshift(spec_dir)

$data = {}
Dir[File.join(spec_dir, 'fixtures/**/*.yml')].each {|f|
  title = File.basename(f, '.yml')
  $data[title] = OpenStruct.new(YAML::load(File.open(f)))
}

$data = OpenStruct.new($data)
Dir[File.join(spec_dir, 'support/**/*.rb')].each {|f| require f}

RSpec.configure do |config|
  caps_chrome = Selenium::WebDriver::Remote::Capabilities.chrome
  caps_chrome['chromeOptions'] = {}
  caps_chrome['chromeOptions']['args'] = ['--disable-notifications']
  caps_chrome['chromeOptions'] = {'mobileEmulation' => {
    'deviceMetrics' => { 'width' => 360, 'height' => 640, 'pixelRatio' => 3.0 },
    'userAgent' => "Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19"
  }}
  Capybara.register_driver :true_automation_driver do |app|
    TrueAutomation::Driver::Capybara.new(app, desired_capabilities: caps_chrome)
  end

  Capybara.configure do |capybara|
    capybara.run_server = false
    capybara.default_max_wait_time = 15

    capybara.default_driver = :true_automation_driver
  end

  config.include Capybara::DSL
  config.include TrueAutomation::DSL

  Dir[File.join(spec_dir, 'support/**/*.rb')].each {|f|
    base = File.basename(f, '.rb')
    klass = camelize(base)
    config.include Module.const_get(klass)
  }
end
