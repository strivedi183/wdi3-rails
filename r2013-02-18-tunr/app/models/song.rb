# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  filename   :string(255)
#  artist_id  :integer          default(0)
#  album_id   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :decimal(, )      default(0.0)
#

class Song < ActiveRecord::Base
  attr_accessible :name, :image, :filename, :genre_ids, :price, :mixtape_ids
  belongs_to :artist
  belongs_to :album
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :mixtapes
  validates :price, :numericality => { :greater_than_or_equal_to => 0}
  #validates :name, :length => { :minimum => 3 }, :uniqueness => true
end
