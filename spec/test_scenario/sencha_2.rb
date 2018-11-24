require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Test sencha 2' do
    visit 'http://examples.sencha.com/coworkee/#login'

    sleep 3
    find(:xpath, "//button[@class='x-button-el']", visible: false).click
    # find(ta(   'sencha:login_btn'), visible: false).click

    sleep 3
    find(:xpath, "(//span[@class='icon x-fa fa-sitemap'])[1]").click
    # find(ta(   'sencha:organizations')).click

    sleep 10
    # find(:xpath, "//div[@id='ext-expandtrigger-1']/div").click
    path = find(:xpath, "//div[@id='ext-expandtrigger-1']/div").path
    puts path.downcase
    find(ta(   'sencha:dropdawn'), visible: false).click
    # find(:xpath, ta('sencha:dropdawn', "//div[@id='ext-expandtrigger-1']")).click

    # sleep 2
    #find(:xpath, "//span[text()='Betty Murphy']").click
    # find(ta(   'sencha:betty_murphy')).click
    # find(:xpath, ta('sencha:betty_murphy', "//span[text()='Betty Murphy']")).click

  sleep 3
  end
end
