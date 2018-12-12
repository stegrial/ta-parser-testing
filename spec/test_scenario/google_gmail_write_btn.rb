require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example_1' do
    visit 'https://accounts.google.com/'

    # find(:xpath, "//input[@type='email']").set('trueautomation.project')
    find(ta(   'google:login')).set('trueautomation.project')

    # find(:xpath, "//div[@id='identifierNext']/content/span").click
    # find(:xpath, ta('google:next_btn', "//div[@id='identifierNext']/content/span")).click
    find(ta(   'google:next_btn')).click

    # find(:xpath, "//input[@type='password']").set('123-654-789')
    find(ta(   'google:pass')).set('123-654-789')

    # find(:xpath, "//div[@id='passwordNext']/content/span").click
    # find(:xpath, ta('google:next_btn', "//div[@id='identifierNext']/content/span")).click
    find(ta(   'google:next_btn')).click

    # expect(page).to have_selector(ta(   'account:mail'))

    # find(:xpath, "//a[@href='https://mail.google.com']").click
    # find(:xpath, ta('account:mail', "//a[@href='https://mail.google.com']")).click
    find(ta(   'account:mail')).click

    # find(:xpath, "//a[text()='Справка']").click

    sleep 10
    path = find(:xpath, "//div[@class='T-I J-J5-Ji T-I-KE L3']").path
    puts path.downcase
    find(ta(   'gmail:write_btn')).click

    sleep 5
  end

end
