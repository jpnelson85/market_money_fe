require "rails_helper"

RSpec.describe MarketService do
  describe "class methods" do
    it "all_markets", :vcr do
      response = MarketService.all_markets

      expect(response).to be_a(Hash)
      expect(response).to have_key(:data)
      expect(response[:data]).to be_an(Array)
      expect(response[:data][0]).to have_key(:attributes)
      expect(response[:data][0][:attributes]).to be_a(Hash)
      expect(response[:data][0][:attributes]).to have_key(:name)
      expect(response[:data][0][:attributes][:name]).to be_a(String)
      expect(response[:data][0][:attributes]).to have_key(:city)
      expect(response[:data][0][:attributes][:city]).to be_a(String)
      expect(response[:data][0][:attributes]).to have_key(:state)
      expect(response[:data][0][:attributes][:state]).to be_a(String)
    end
  end
end