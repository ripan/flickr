require "rails_helper"

RSpec.feature "Photos management", :type => :feature do
  feature "User visits home page" do

    before :each do
      visit "/home/index"
    end

    scenario "Should see text Recent Photos" do
      expect(page).to have_text("Recent Photos")
    end

    scenario "Should see 1000 as total photo count" do
      expect(page).to have_css("h3", text: "1000")
    end

    scenario "Should see maximum 100 photos per page" do
      expect(page).to have_selector("div .row.photo-list .thumbnail", :maximum => 100)
    end

    scenario "Should see search form with placeholder Search photos" do
      expect(page).to have_selector("form input[placeholder='Search photos']")
    end

    scenario "Should see text 'Photos with keyword' " do
      fill_in "keyword", :with => "rails"
      click_button "Search"
      expect(page).to have_css("h3", text: "Photos with keyword")
    end

    scenario "Should see 0 photo count for some random keyword" do
      fill_in "keyword", :with => "dsdsdfsdfsdfsdfsdf"
      click_button "Search"
      expect(page).to have_css("h3", text: "Total photos found: 0")
    end

  end

  feature "User clicks on photo" do

    before :each do
      visit "/home/index"
    end

    scenario "Should see enlarged photo view" do
      page.all(:selector, "img[data-toggle='modal']").first.click
      expect(page).to have_selector("#imageModal", visible: true)
    end

  end


end
