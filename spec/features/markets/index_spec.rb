require 'rails_helper'

RSpec.describe 'Markets index page' do
  describe 'As a visitor' do
    it 'I see the name, city, and state of each market in the system', :vcr do
      visit '/markets'

      expect(page).to have_content('Markets')
      expect(page).to have_content('Name')
      expect(page).to have_content('City')
      expect(page).to have_content('State')
    end

    it 'I see a button to get more info about each market', :vcr do
      visit '/markets'

      expect(page).to have_button('More Info')
      click_button('More Info', match: :first)

      expect(current_path).to eq('/markets/1')
    end
  end
end
