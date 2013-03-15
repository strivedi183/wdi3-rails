class StocksController < ApplicationController
  def index
    @stock = Stock.new
    @stocks = @auth.stocks
  end
  def new
    @stock = Stock.new
  end
  def create
    stock = Stock.create(params[:stock])
    @auth.stocks << stock
    @stocks = @auth.stocks

    respond_to do |format|
      format.js
    end
  end
  def get_quotes
    # quotes = params[:quotes]

    # quotes = quotes.each do |key, value|
    #   stock = Stock.where(:symbol => key).first
    #   value << stock.get_quote
    # end

    # @auth.stocks.each do |stock|
    #   quote = stock.get_quotes
    #   quotes << quote
    # end

    quotes = @auth.stocks.map{ |s| {:symbol => s.symbol, :quote => s.get_quote, :time => Time.now }}

    render :json => quotes
  end
end