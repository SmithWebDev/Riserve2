class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: ENV['PUBLISHABLE_KEY'])
  end

  def about
  end
end
