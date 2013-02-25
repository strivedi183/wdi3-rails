class Mountain < ActiveRecord::Base
  attr_accessible :name, :image, :elevation, :prominence, :continent, :range
end