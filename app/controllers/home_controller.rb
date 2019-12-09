class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: ENV['PUBLISHABLE_KEY'])

    if params[:ticker] == ""
      @nothing = "Please Enter A Symbol."
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
        @stock.inspect
        @error = "Sorry, That symbol doesn't exist."
      end
    end
  end

  def about
  end
end
