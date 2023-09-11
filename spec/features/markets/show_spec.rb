require "rails_helper"

RSpec.describe "Markets show page" do
  it "displays the market's name, city, state, and zip", :vcr do
    visit "/markets/322458"

    expect(page).to have_link("The Charcuterie Corner")

    click_link("The Charcuterie Corner")

    expect(current_path).to eq(vendor_path(322458))
  end
end