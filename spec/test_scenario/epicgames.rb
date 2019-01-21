require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Main Page testing' do
    visit 'https://www.epicgames.com'


    #Epic games logo click
    #find(:css, ta('epicgames:home:logo', '.shieldLogo')).click
    #find(:css, '.shieldLogo').click
    find(ta(   'epicgames:home:logo')).click

    #Free From button click
    #find(:xpath, ta('epicgames:home:freeFrom', '(//span[@class="FeaturedRow-background_38201c03"])[1]')).click
    #find(:xpath, '(//span[@class="FeaturedRow-background_38201c03"])[1]').click
    find(ta(   'epicgames:home:freeFrom')).click

    #Free From button click
    #find(:xpath, ta('epicgames:home:freeFrom', '(//span[@class="FeaturedRow-background_38201c03"])[1]')).click
    #find(:xpath, '(//span[@class="FeaturedRow-background_38201c03"])[1]').click
    find(ta(   'epicgames:home:freeFrom')).click

    # Store button click
    # find(:id, 'sitenav-link-0').click
    # find(:id, ta('epicgames:home:store', 'sitenav-link-0')).click
    find(ta(   'epicgames:home:store')).click

    # find(:id, 'sitenav-link-1').click
    # find(:id, ta('epicgames:home:news', 'sitenav-link-1')).click
    find(ta(   'epicgames:home:news')).click

    # find(:id, 'sitenav-link-2').click
    # find(:id, ta('epicgames:home:help', 'sitenav-link-2')).click
    find(ta(   'epicgames:home:help')).click

    # find(:id, 'sitenav-link-3').click
    # find(:id, ta('epicgames:home:unrealEngine', 'sitenav-link-3')).click
    find(ta(   'epicgames:home:unrealEngine')).click

    # find(:xpath, '(//div[@class="slick-arrow slick-next"])[1]').click
    # sleep 2
    # find(:xpath, '(//div[@class="slick-arrow slick-next"])[1]').click
    # sleep 2
    # find(:xpath, '(//div[@class="slick-arrow slick-next"])[1]').click
    # sleep 2
    # #find(:xpath, ta('unrealEngine:home:nextSliderBtn', '(//div[@class="slick-arrow slick-next"])[1]')).click
    # #find(ta(   'unrealEngine:home:nextSliderBtn')).click

    # find(:xpath, '(//div[@class="slick-arrow slick-next"])[2]').click
    # sleep 2
    # #find(:xpath, ta('unrealEngine:home:nextSliderBtn2', '(//div[@class="slick-arrow slick-next"])[2]')).click
    # #find(ta(   'unrealEngine:home:nextSliderBtn2')).click

    # find(:xpath, '(//div[@class="slick-arrow slick-next"])[3]').click

    # #find(:id, 'overviewRibbon').click
    # find(:id, ta('unrealEngine:home:latestnewsBtn', 'overviewRibbon')).click

    sleep 5

  end
end
