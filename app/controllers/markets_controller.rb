class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.get_markets
  end

  def show
    
  end
end