# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  symbol     :string(255)
#  price      :decimal(, )
#  shares     :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :symbol, :price, :shares, :user_id
  belongs_to :user, :inverse_of => :stocks

  def get_quote
    YahooFinance::get_quotes(YahooFinance::StandardQuote, self.symbol)[self.symbol].lastTrade
  end

  def current_position
    self.shares * get_quote
  end

  def initial_position
    self.shares * self.price
  end

  before_save :purchase
  def purchase
    price = get_quote
    if price.present?
      self.price = price
    end
  end
end
