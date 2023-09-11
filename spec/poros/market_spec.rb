require "rails_helper"

RSpec.describe Market do
  describe "initialize" do
    it "exists with attributes", :vcr do
      market_details = {
        "id"=>"1",
        "type"=>"market",
        "attributes"=>{
          "name"=>"Cherry Creek Farmers Market",
          "street"=>"E. 1st Ave. and University Blvd.",
          "city"=>"Denver",
          "county"=>"Denver",
          "state"=>"CO",
          "zip"=>"80206",
          "lat"=>"39.717329",
          "lon"=>"-104.955834",
          "vendor_count"=>30}
    }

    market = Market.new(market_details)

    expect(market).to be_a(Market)
    expect(market.id).to eq("1")
    expect(market.name).to eq("Cherry Creek Farmers Market")
    expect(market.city).to eq("Denver")
    expect(market.state).to eq("CO")
    expect(market.street).to eq("E. 1st Ave. and University Blvd.")
    expect(market.zip).to eq("80206")
    end
  end
end