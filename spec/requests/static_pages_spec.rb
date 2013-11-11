require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Moneyger'" do
      visit root_path
      expect(page).to have_content('Moneyger')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("MonneyGer App Website")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
  end  
end