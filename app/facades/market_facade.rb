class MarketFacade
  def self.get_markets
    markets = MarketService.all_markets
    markets[:data].map do |market|
      Market.new(market)
    end
  end
end