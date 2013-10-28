require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the rigth title" do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Test page" do

  	it "should have the content 'Sample App' in the page " do
  		visit '/static_pages/help'
  		expect(page).to have_content('Sample App')
  	end

    it "should have the rigth title" do
      visit '/static_pages/help'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end

  end

  describe "About page" do

    it "should contain 'Sample App'" do
      visit '/static_pages/about'
      expect(page).to have_content('Sample App')
    end
    it "should have the rigth title" do
      visit '/static_pages/about'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About')
    end
  end
end
