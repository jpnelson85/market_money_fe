require "rails_helper"

RSpec.describe "Vendor show page" do
  describe "as a visitor" do
    it "displays vendor's name, description, contact name, and phone number", :vcr do
      visit vendor_path(322458)

      expect(page).to have_content("The Charcuterie Corner")
      expect(page).to have_content("The Charcuterie Corner is a family-owned and operated business that sells only the finest hand-crafted sausages and salamis.")
      expect(page).to have_content("John Smith")
      expect(page).to have_content("555-555-5555")
      expect(page).to have_content("Credit Accepted?: true")
    end
  end
end