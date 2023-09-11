require "rails_helper"

RSpec.describe MarketFacade do
  describe "get_markets" do
    it "returns an array of Market objects", :vcr do
      markets = MarketFacade.get_markets

      expect(markets).to be_an(Array)
      expect(markets[0]).to be_a(Market)
      expect(markets[0].name).to be_a(String)
      expect(markets[0].city).to be_a(String)
      expect(markets[0].state).to be_a(String)
    end
  end
end