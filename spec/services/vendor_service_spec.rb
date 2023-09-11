require "rails_helper"

RSpec.describe VendorService do
  describe "class methods" do
    it "returns Vendor objects", :vcr do
      vendor = VendorService.get_vendor(322458)

      expect(vendor).to be_a(Hash)
      expect(vendor).to have_key(:data)
      expect(vendor[:data]).to be_a(Hash)
      expect(vendor[:data]).to have_key(:attributes)
      expect(vendor[:data][:attributes]).to be_a(Hash)
      expect(vendor[:data][:attributes]).to have_key(:name)
      expect(vendor[:data][:attributes][:name]).to be_a(String)
      expect(vendor[:data][:attributes]).to have_key(:description)
      expect(vendor[:data][:attributes][:description]).to be_a(String)
      expect(vendor[:data][:attributes]).to have_key(:contact_name)
      expect(vendor[:data][:attributes][:contact_name]).to be_a(String)
      expect(vendor[:data][:attributes]).to have_key(:contact_phone)
      expect(vendor[:data][:attributes][:contact_phone]).to be_a(String)
      expect(vendor[:data][:attributes]).to have_key(:credit_accepted)
      expect(vendor[:data][:attributes][:credit_accepted]).to be_in([true, false])
    end
  end
end