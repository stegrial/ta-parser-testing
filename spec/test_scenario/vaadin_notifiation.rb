require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Filling last name field in the editing profile pop-up' do

    # For fix problem close notifiction
    # TA-731

    visit 'https://demo.vaadin.com/dashboard/#!dashboard'

    #sleep 5
     find(:xpath, "//div[contains(., 'Username')]/input").set('tester')
    # find(:xpath, ta('vaadin:loginPage:username', "")).set('tester')
    #find(ta("vaadin:loginPage:username")).set('tester')

    #sleep 5
     find(:xpath, "//div[contains(., 'Password')]/input").set('tester')
    # find(:xpath, ta('vaadin:loginPage:password', "")).set('tester')
    #find(ta("vaadin:loginPage:password")).set('tester')

    #sleep 5
     find(:xpath, "(//div[@role='button'])[1]").click
    # find(:xpath, ta('vaadin:loginPage:loginBtn', "")).click
    #find(ta("vaadin:loginPage:loginBtn")).click

    #sleep 5
    # find(:xpath, "").click
    # find(:xpath, ta('vaadin:loginPage:loginBtn', "")).click
    #find(ta("vaadin:notification:xBtn")).click

    #for i in 0..1
    #sleep 5
    find(:css, "#dashboard-menu > div > div.v-menubar.v-widget.user-menu.v-menubar-user-menu > span > span.v-menubar-menuitem-caption").click
    # find(:xpath, ta('vaadin:mainPage:dropDownMenu', "")).click
    #find(ta("vaadin:mainPage:dropDownMenu")).click

    #sleep 5
     find(:xpath, "//span[text()='Edit Profile']").click
    # find(:xpath, ta('vaadin:dropDownMenu:editProfile', "")).click
    #find(ta("vaadin:dropDownMenu:editProfile")).click

    # sleep 5
     find(:xpath, "(//input[@class='v-textfield v-widget'])[1]").set('Eugene')
    # find(:xpath, ta('vaadin:profileWindow:firstName', "")).set('Eugene')
    #find(ta("vaadin:profileWindow:firstName")).set('Eugene')

    # sleep 5
     #find(:xpath, "(//input[@class='v-textfield v-widget'])[1]").set('Shapovalov')
    # find(:xpath, ta('vaadin:profileWindow:lastName', "")).set('Shapovalov')
    find(ta("vaadin:profileWindow:lastName")).set('Shapovalov')

    #sleep 5
    # find(:xpath, "(//div[@class='v-scrollable']//div[@role='button'])[4]").click
    # find(:xpath, ta('vaadin:profileWindow:okBtn', "")).click
    #find(ta("vaadin:profileWindow:okBtn")).click

    sleep 5
  #  end
  end
end
