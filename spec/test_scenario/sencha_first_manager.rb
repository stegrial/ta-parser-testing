require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Test sencha first manager' do
    visit 'http://examples.sencha.com/coworkee/#login'

    sleep 5
    # find(:xpath, "//button[@class='x-button-el']", visible: false).click
    find(ta(   'sencha:login_btn'), visible: false).click

    sleep 5
    # find(:xpath, "(//span[@class='icon x-fa fa-sitemap'])[1]").click
    find(ta(   'sencha:organizations')).click

    sleep 5
    find(:xpath, "//div[@id='ext-expandtrigger-1']/div").click
    # find(:xpath, ta('sencha:dropdawn', "//div[@id='ext-expandtrigger-1']/div")).click
    # find(ta(   'sencha:dropdawn'), visible: false).click

    sleep 10
    # find(:xpath, "(//span[@class='x-list-label'])[1]").click
    # find(:xpath, ta('sencha:first_manager:1', "(//span[@class='x-list-label'])[1]")).click
    # path = find(:xpath, "(//span[@class='x-list-label'])[1]").path
    # puts path.downcase
    find(ta(   'sencha:first_manager:1')).click #first version
    # find(ta(   'sencha:first_manager_div2')).click #dynamic
    # find(ta(   'sencha:first_manager_div3')).click #dynamic

  sleep 5
  end
end
