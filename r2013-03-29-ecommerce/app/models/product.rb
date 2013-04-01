# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image_url   :string(255)
#  cost        :decimal(, )
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :name, :description, :cost, :address, :image, :remote_image_url
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_and_belongs_to_many :tags

  before_save :geocode

  private

  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.lat = result.latitude
      self.lng = result.longitude
    end
  end
end