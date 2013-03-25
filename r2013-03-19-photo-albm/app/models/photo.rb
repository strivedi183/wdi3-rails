# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
  attr_accessible :name, :url, :remote_url_url
  belongs_to :album, :inverse_of => :photos
  mount_uploader :url, PicUploader
end
