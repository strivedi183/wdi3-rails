# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  nationality :string(255)
#  dob         :date
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Author < ActiveRecord::Base
  attr_accessible :name, :nationality, :dob, :image
  has_many :books
end
