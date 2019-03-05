require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Clicking on profile dropdown after saving some profile data' do

    # The problem: TA parser does not find the element on the page (lancome: add items to cart and try click `go to checkout button`)
    # TA-735

    visit 'https://www.lancome-usa.com/makeup/eyes/mascara/monsieur-big-heart-limited-edition/LAN326.html'
    sleep 5

    find(:xpath, "(//button[contains(.,'Close')])[2]").click


    find(:xpath, "//form[@id='product-add-to-cart']//button[contains(.,'Add To Bag')]").click
    #find(:xpath, ta('lancome:productPage:addToBagBtn', "//form[@id='product-add-to-cart']//button[contains(.,'Add To Bag')])).click
    #find(ta("lancome:productPage:addToBagBtn")).click


    visit 'https://www.lancome-usa.com/makeup/lips-and-nails/lipstick/limited-edition-valentines-day-labsolu-rouge/LAN339.html'
    sleep 5

    find(:xpath, "//form[@id='product-add-to-cart']//button[contains(.,'Add To Bag')]").click
    #find(:xpath, ta('lancome:productPage:addToBagBtn', "//form[@id='product-add-to-cart']//button[contains(.,'Add To Bag')])).click
    #find(ta("lancome:productPage:addToBagBtn")).click



    find(:xpath, "//a/div[contains(.,'Bag')]").click
    # find(:xpath, ta('lancome:productPage:goCartBtn', "//a/div[contains(.,'Bag')]")).click
    #find(ta("lancome:productPage:goCartBtn")).click

    sleep 5
    find(:xpath, "//button[contains(.,'Go to bag')]").click
    # find(:xpath, ta('lancome:productPage:goToBag', "//button[contains(.,'Go to bag')]")).click
    # find(ta("lancome:productPage:goToBag")).click

    sleep 5
    #find(:xpath, "(//button[contains(.,'Go To Checkout')])[2]").click
    # find(:xpath, ta('lancome:cartPage:goToCheckoutBtn', "(//button[contains(.,'Go To Checkout')])[2]")).click
    find(ta("lancome:cartPage:goToCheckoutBtn")).click

  end
end
