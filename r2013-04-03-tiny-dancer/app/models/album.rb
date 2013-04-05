# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  attr_accessible :name, :image
  has_many :songs, :inverse_of => :album
  belongs_to :artist, :inverse_of => :albums
end
