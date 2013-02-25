class StockController < ApplicationController
  def homepage
  end
  def stock
  end
  def quote
    if params['quote'].nil?
      @stock_symbol = 'AAPL'
    else
      @stock_symbol = params['quote']
    end
    begin
      @share_price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock_symbol)[@stock_symbol].lastTrade
    rescue
      retry
    end
    render ('/stock/stock')
  end
end