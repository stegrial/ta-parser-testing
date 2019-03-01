require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Filling the Email field in the authorization form' do

    visit 'https://venus-preprod.moovweb.net'

    sleep 10
    # find(:xpath, ("(//button[@aria-label='Account'])[1]")).click
    # find(:xpath, ta('venus:account_button', "(//button[@aria-label='Account'])[1]")).click
    find(ta("venus:account_button")).click

    sleep 10
    # find(:id, ('ctl00_Body1_loginemail')).set('denys.shutko@moovweb.com')
    # find(:id, ta('venus:email_field', 'ctl00_Body1_loginemail')).set('denys.shutko@moovweb.com')
    find(ta("venus:email_field")).set('denys.shutko@moovweb.com')

    sleep 5
  end
end
