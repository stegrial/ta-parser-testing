require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  # scenario 'Test example_1' do
  #   visit 'https://accounts.google.com/'
  #
  #   find(ta('google:login')).set('trueautomation.project')
  #   find(ta('google:next_btn')).click
  #   find(ta('google:pass')).set('123-654-789')
  #
  #   find(ta('google:next_btn')).click
  #   # find(:xpath, ta('google:next_btn', "//span[text()='Далее']")).click
  #   # find(:xpath, "//span[text()='Далее']").click
  #
  #   expect(page).to have_selector(ta('account:mail'))
  #
  #   find(ta('account:mail')).click
  #   # find(:xpath, ta('account:mail', "//a[@href='https://mail.google.com']")).click
  #   # find(:xpath, "//a[@href='https://mail.google.com']").click
  #
  #   # find(:xpath, "//a[text()='Справка']").click
  #   # sleep 3
  #
  #   # find(ta('gmail:write_btn')).click
  #
  #   sleep 3
  # end

  # scenario 'Test example_2' do
  #   visit 'https://www.primefaces.org/showcase/'
  #
  #   find(ta('primefaces:charts')).click
  #
  #   sleep 3
  # end

  # scenario 'Test example_3' do
  #   visit 'https://docs.sencha.com/extjs/6.6.0/index.html'
  #
  #   find(ta('sencha:components')).click
  #
  #   sleep 3
  # end

  # scenario 'Test example_4' do
  #   visit 'https://www.cryptocompare.com/'
  #
  #   find(ta('cryptocompare:mining')).click
  #   find(ta('cryptocompare:mining_pools')).click
  #
  #   sleep 3
  # end

  # scenario 'Test example_5' do
  #   visit 'https://www.facebook.com'
  #   find(ta('sign_in:email_field')).set('eshapovalov298@gmail.com')
  #   find(ta('sign_in:pass_field')).set('Tester1234')
  #   find(ta('sign_in:login_btn')).click
  #
  #   find(ta('home:profile')).click
  #   find(ta('home:three_points')).click
  #   find(ta('home:show_in_tab')).click
  #

  # sleep 3
  # end

  scenario 'Test example_6' do
    visit 'http://examples.sencha.com/coworkee/#login'

    sleep 3
    find(:xpath, "//button[@class='x-button-el']", visible: false).click
    # find(ta('sencha:login_btn'), visible: false).click

    sleep 3
    find(:xpath, "(//span[@class='icon x-fa fa-sitemap'])[1]").click
    # find(ta('sencha:organizations')).click

    sleep 10
    # find(:xpath, "//div[@id='ext-expandtrigger-1']/div").click
    path = find(:xpath, "//div[@id='ext-expandtrigger-1']/div").path
    puts path.downcase
    find(ta('sencha:dropdawn'), visible: false).click
    # find(:xpath, ta('sencha:dropdawn', "//div[@id='ext-expandtrigger-1']")).click

    # sleep 2
    #find(:xpath, "//span[text()='Betty Murphy']").click
    # find(ta('sencha:betty_murphy')).click
    # find(:xpath, ta('sencha:betty_murphy', "//span[text()='Betty Murphy']")).click

  sleep 3
  end
end
