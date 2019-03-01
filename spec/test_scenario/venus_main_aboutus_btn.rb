require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Clicking by About Us button in footer' do

    visit 'https://venus-preprod.moovweb.net'

    sleep 10
    # find(:xpath, "//li[contains (@class, 'jss261') and contains (., 'About Us')]").click
    # find(:xpath, ta('venus:main:aboutus_btn', "//li[contains (@class, 'jss261') and contains (., 'About Us')]")).click
    find(ta("venus:main:aboutus_btn")).click

    sleep 5
  end
end
