require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Click by the Clothing link' do

    visit 'https://venus-preprod.moovweb.net'

    sleep 15
    # find(:xpath, "(//div[@class='jss122' and @data-th='topNavClicked'])[1]").click
    # find(:xpath, ta('venus:clothing_link', "(//div[@class='jss122' and @data-th='topNavClicked'])[1]")).click
    find(ta("venus:clothing_link")).click

    sleep 5
  end
end
