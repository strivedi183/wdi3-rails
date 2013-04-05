# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  position   :integer
#  filename   :string(255)
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  attr_accessible :name, :position, :filename
  belongs_to :album, :inverse_of => :songs
end
