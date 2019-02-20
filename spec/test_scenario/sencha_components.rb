require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test sencha components' do
    visit 'https://docs.sencha.com/extjs/6.6.0/index.html'

    sleep 10

    find(ta(   'sencha:components')).click

    sleep 3
  end

end
