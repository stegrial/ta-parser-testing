require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Main Page testing' do
    caps_chrome = Selenium::WebDriver::Remote::Capabilities.chrome
    caps_chrome['chromeOptions'] = {'mobileEmulation' => {
      'deviceMetrics' => { 'width' => 360, 'height' => 640, 'pixelRatio' => 3.0 },
      'userAgent' => "Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19"
    }}
    caps_chrome['chromeOptions']['args'] = ['--disable-notifications']
    Capybara.register_driver :true_automation_driver do |app|
      TrueAutomation::Driver::Capybara.new(app, desired_capabilities: caps_chrome)
    end

    visit 'https://venus-preprod.moovweb.net/'

    find(:xpath, ta("profileBtn")).click
    find(:xpath, ta("emailFld")).set('qateam@moovweb.com')
    find(:xpath, ta("passwordFld")).set('1234567s')
    find(:xpath, ta("signIn")).click
    find(:xpath, ta("profileBtn")).click

    find(:xpath, ta("account_info")).click
    find(:xpath, ta("profileBtn")).click
    find(:xpath, ta("wish_list")).click
    sleep 5
    find(:xpath, ta("profileBtn")).click
    find(:xpath, ta("account_info")).click
    sleep 5
  end
end
